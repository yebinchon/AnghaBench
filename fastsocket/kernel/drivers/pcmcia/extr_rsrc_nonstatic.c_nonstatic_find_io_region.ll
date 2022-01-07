; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_rsrc_nonstatic.c_nonstatic_find_io_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_rsrc_nonstatic.c_nonstatic_find_io_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.pcmcia_socket = type { %struct.TYPE_2__*, %struct.socket_data*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.socket_data = type { i32 }
%struct.pcmcia_align_data = type { i64, i64, i32* }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@rsrc_mutex = common dso_local global i32 0, align 4
@ioport_resource = common dso_local global i32 0, align 4
@pcmcia_align = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i64, i32, i64, %struct.pcmcia_socket*)* @nonstatic_find_io_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @nonstatic_find_io_region(i64 %0, i32 %1, i64 %2, %struct.pcmcia_socket* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.pcmcia_socket*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca %struct.socket_data*, align 8
  %11 = alloca %struct.pcmcia_align_data, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.pcmcia_socket* %3, %struct.pcmcia_socket** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @IORESOURCE_IO, align 4
  %16 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %17 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %16, i32 0, i32 2
  %18 = call i32 @dev_name(i32* %17)
  %19 = call %struct.resource* @make_resource(i32 0, i32 %14, i32 %15, i32 %18)
  store %struct.resource* %19, %struct.resource** %9, align 8
  %20 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %21 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %20, i32 0, i32 1
  %22 = load %struct.socket_data*, %struct.socket_data** %21, align 8
  store %struct.socket_data* %22, %struct.socket_data** %10, align 8
  %23 = load i64, i64* %5, align 8
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i64 65536, i64* %7, align 8
  br label %27

27:                                               ; preds = %26, %4
  %28 = load i64, i64* %7, align 8
  %29 = sub i64 %28, 1
  %30 = getelementptr inbounds %struct.pcmcia_align_data, %struct.pcmcia_align_data* %11, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds %struct.pcmcia_align_data, %struct.pcmcia_align_data* %11, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = and i64 %31, %33
  %35 = getelementptr inbounds %struct.pcmcia_align_data, %struct.pcmcia_align_data* %11, i32 0, i32 1
  store i64 %34, i64* %35, align 8
  %36 = load %struct.socket_data*, %struct.socket_data** %10, align 8
  %37 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.pcmcia_align_data, %struct.pcmcia_align_data* %11, i32 0, i32 2
  store i32* %37, i32** %38, align 8
  %39 = call i32 @mutex_lock(i32* @rsrc_mutex)
  %40 = load %struct.resource*, %struct.resource** %9, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i64, i64* %12, align 8
  %43 = load i32, i32* @pcmcia_align, align 4
  %44 = call i32 @allocate_resource(i32* @ioport_resource, %struct.resource* %40, i32 %41, i64 %42, i64 -1, i32 1, i32 %43, %struct.pcmcia_align_data* %11)
  store i32 %44, i32* %13, align 4
  %45 = call i32 @mutex_unlock(i32* @rsrc_mutex)
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %27
  %49 = load %struct.resource*, %struct.resource** %9, align 8
  %50 = call i32 @kfree(%struct.resource* %49)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %51

51:                                               ; preds = %48, %27
  %52 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %52
}

declare dso_local %struct.resource* @make_resource(i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @allocate_resource(i32*, %struct.resource*, i32, i64, i64, i32, i32, %struct.pcmcia_align_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
