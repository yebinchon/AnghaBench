; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_au1000_generic.c_au1x00_pcmcia_set_io_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_au1000_generic.c_au1x00_pcmcia_set_io_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32 }
%struct.pccard_io_map = type { i64, i32, i32, i32, i64 }
%struct.au1000_pcmcia_socket = type { i32*, i64 }

@MAX_IO_WIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"map (%d) out of range\0A\00", align 1
@MAP_ACTIVE = common dso_local global i32 0, align 4
@AU1000_PCMCIA_IO_SPEED = common dso_local global i32 0, align 4
@MAP_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @au1x00_pcmcia_set_io_map(%struct.pcmcia_socket* %0, %struct.pccard_io_map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_socket*, align 8
  %5 = alloca %struct.pccard_io_map*, align 8
  %6 = alloca %struct.au1000_pcmcia_socket*, align 8
  %7 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %4, align 8
  store %struct.pccard_io_map* %1, %struct.pccard_io_map** %5, align 8
  %8 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %9 = call %struct.au1000_pcmcia_socket* @to_au1000_socket(%struct.pcmcia_socket* %8)
  store %struct.au1000_pcmcia_socket* %9, %struct.au1000_pcmcia_socket** %6, align 8
  %10 = load %struct.pccard_io_map*, %struct.pccard_io_map** %5, align 8
  %11 = getelementptr inbounds %struct.pccard_io_map, %struct.pccard_io_map* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MAX_IO_WIN, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.pccard_io_map*, %struct.pccard_io_map** %5, align 8
  %17 = getelementptr inbounds %struct.pccard_io_map, %struct.pccard_io_map* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %18)
  store i32 -1, i32* %3, align 4
  br label %63

20:                                               ; preds = %2
  %21 = load %struct.pccard_io_map*, %struct.pccard_io_map** %5, align 8
  %22 = getelementptr inbounds %struct.pccard_io_map, %struct.pccard_io_map* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MAP_ACTIVE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %20
  %28 = load %struct.pccard_io_map*, %struct.pccard_io_map** %5, align 8
  %29 = getelementptr inbounds %struct.pccard_io_map, %struct.pccard_io_map* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ugt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.pccard_io_map*, %struct.pccard_io_map** %5, align 8
  %34 = getelementptr inbounds %struct.pccard_io_map, %struct.pccard_io_map* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  br label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @AU1000_PCMCIA_IO_SPEED, align 4
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i32 [ %35, %32 ], [ %37, %36 ]
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.au1000_pcmcia_socket*, %struct.au1000_pcmcia_socket** %6, align 8
  %42 = getelementptr inbounds %struct.au1000_pcmcia_socket, %struct.au1000_pcmcia_socket* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.pccard_io_map*, %struct.pccard_io_map** %5, align 8
  %45 = getelementptr inbounds %struct.pccard_io_map, %struct.pccard_io_map* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32 %40, i32* %47, align 4
  br label %48

48:                                               ; preds = %38, %20
  %49 = load %struct.au1000_pcmcia_socket*, %struct.au1000_pcmcia_socket** %6, align 8
  %50 = getelementptr inbounds %struct.au1000_pcmcia_socket, %struct.au1000_pcmcia_socket* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = load %struct.pccard_io_map*, %struct.pccard_io_map** %5, align 8
  %54 = getelementptr inbounds %struct.pccard_io_map, %struct.pccard_io_map* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.pccard_io_map*, %struct.pccard_io_map** %5, align 8
  %56 = getelementptr inbounds %struct.pccard_io_map, %struct.pccard_io_map* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = zext i32 %57 to i64
  %59 = load i64, i64* @MAP_SIZE, align 8
  %60 = add nsw i64 %58, %59
  %61 = load %struct.pccard_io_map*, %struct.pccard_io_map** %5, align 8
  %62 = getelementptr inbounds %struct.pccard_io_map, %struct.pccard_io_map* %61, i32 0, i32 4
  store i64 %60, i64* %62, align 8
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %48, %15
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.au1000_pcmcia_socket* @to_au1000_socket(%struct.pcmcia_socket*) #1

declare dso_local i32 @debug(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
