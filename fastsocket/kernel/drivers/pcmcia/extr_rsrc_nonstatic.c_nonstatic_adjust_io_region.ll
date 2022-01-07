; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_rsrc_nonstatic.c_nonstatic_adjust_io_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_rsrc_nonstatic.c_nonstatic_adjust_io_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.pcmcia_socket = type { %struct.socket_data* }
%struct.socket_data = type { %struct.resource_map }
%struct.resource_map = type { i64, i32, %struct.resource_map* }

@ENOMEM = common dso_local global i32 0, align 4
@rsrc_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.resource*, i64, i64, %struct.pcmcia_socket*)* @nonstatic_adjust_io_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nonstatic_adjust_io_region(%struct.resource* %0, i64 %1, i64 %2, %struct.pcmcia_socket* %3) #0 {
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pcmcia_socket*, align 8
  %9 = alloca %struct.resource_map*, align 8
  %10 = alloca %struct.socket_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.resource* %0, %struct.resource** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.pcmcia_socket* %3, %struct.pcmcia_socket** %8, align 8
  %14 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %15 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %14, i32 0, i32 0
  %16 = load %struct.socket_data*, %struct.socket_data** %15, align 8
  store %struct.socket_data* %16, %struct.socket_data** %10, align 8
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %11, align 4
  %19 = call i32 @mutex_lock(i32* @rsrc_mutex)
  %20 = load %struct.socket_data*, %struct.socket_data** %10, align 8
  %21 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %21, i32 0, i32 2
  %23 = load %struct.resource_map*, %struct.resource_map** %22, align 8
  store %struct.resource_map* %23, %struct.resource_map** %9, align 8
  br label %24

24:                                               ; preds = %58, %4
  %25 = load %struct.resource_map*, %struct.resource_map** %9, align 8
  %26 = load %struct.socket_data*, %struct.socket_data** %10, align 8
  %27 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %26, i32 0, i32 0
  %28 = icmp ne %struct.resource_map* %25, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %24
  %30 = load %struct.resource_map*, %struct.resource_map** %9, align 8
  %31 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %12, align 8
  %33 = load %struct.resource_map*, %struct.resource_map** %9, align 8
  %34 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.resource_map*, %struct.resource_map** %9, align 8
  %37 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = add i64 %35, %39
  %41 = sub i64 %40, 1
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %29
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %13, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %29
  br label %58

50:                                               ; preds = %45
  %51 = load %struct.resource*, %struct.resource** %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %6, align 8
  %55 = sub i64 %53, %54
  %56 = add i64 %55, 1
  %57 = call i32 @adjust_resource(%struct.resource* %51, i64 %52, i64 %56)
  store i32 %57, i32* %11, align 4
  br label %62

58:                                               ; preds = %49
  %59 = load %struct.resource_map*, %struct.resource_map** %9, align 8
  %60 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %59, i32 0, i32 2
  %61 = load %struct.resource_map*, %struct.resource_map** %60, align 8
  store %struct.resource_map* %61, %struct.resource_map** %9, align 8
  br label %24

62:                                               ; preds = %50, %24
  %63 = call i32 @mutex_unlock(i32* @rsrc_mutex)
  %64 = load i32, i32* %11, align 4
  ret i32 %64
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adjust_resource(%struct.resource*, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
