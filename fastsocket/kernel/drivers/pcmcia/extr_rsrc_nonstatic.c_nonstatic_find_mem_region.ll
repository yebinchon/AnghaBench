; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_rsrc_nonstatic.c_nonstatic_find_mem_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_rsrc_nonstatic.c_nonstatic_find_mem_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.pcmcia_socket = type { i32, %struct.TYPE_2__*, %struct.socket_data*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.socket_data = type { i32 }
%struct.pcmcia_align_data = type { i64, i64, i32* }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@SS_CAP_PAGE_REGS = common dso_local global i32 0, align 4
@rsrc_mutex = common dso_local global i32 0, align 4
@iomem_resource = common dso_local global i32 0, align 4
@pcmcia_align = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i64, i64, i64, i32, %struct.pcmcia_socket*)* @nonstatic_find_mem_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @nonstatic_find_mem_region(i64 %0, i64 %1, i64 %2, i32 %3, %struct.pcmcia_socket* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pcmcia_socket*, align 8
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.socket_data*, align 8
  %13 = alloca %struct.pcmcia_align_data, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.pcmcia_socket* %4, %struct.pcmcia_socket** %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %10, align 8
  %21 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %20, i32 0, i32 3
  %22 = call i32 @dev_name(i32* %21)
  %23 = call %struct.resource* @make_resource(i32 0, i64 %18, i32 %19, i32 %22)
  store %struct.resource* %23, %struct.resource** %11, align 8
  %24 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %10, align 8
  %25 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %24, i32 0, i32 2
  %26 = load %struct.socket_data*, %struct.socket_data** %25, align 8
  store %struct.socket_data* %26, %struct.socket_data** %12, align 8
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %5
  %30 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %10, align 8
  %31 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SS_CAP_PAGE_REGS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %29, %5
  %38 = phi i1 [ true, %5 ], [ %36, %29 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %9, align 4
  %40 = load i64, i64* %8, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds %struct.pcmcia_align_data, %struct.pcmcia_align_data* %13, i32 0, i32 0
  store i64 %41, i64* %42, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.pcmcia_align_data, %struct.pcmcia_align_data* %13, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = and i64 %43, %45
  %47 = getelementptr inbounds %struct.pcmcia_align_data, %struct.pcmcia_align_data* %13, i32 0, i32 1
  store i64 %46, i64* %47, align 8
  %48 = load %struct.socket_data*, %struct.socket_data** %12, align 8
  %49 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.pcmcia_align_data, %struct.pcmcia_align_data* %13, i32 0, i32 2
  store i32* %49, i32** %50, align 8
  store i32 0, i32* %17, align 4
  br label %51

51:                                               ; preds = %85, %37
  %52 = load i32, i32* %17, align 4
  %53 = icmp slt i32 %52, 2
  br i1 %53, label %54, label %88

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  store i64 1048576, i64* %15, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %15, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i64, i64* %6, align 8
  br label %64

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i64 [ %62, %61 ], [ 0, %63 ]
  store i64 %65, i64* %14, align 8
  br label %69

66:                                               ; preds = %54
  store i64 -1, i64* %15, align 8
  %67 = load i64, i64* %6, align 8
  %68 = add i64 1048576, %67
  store i64 %68, i64* %14, align 8
  br label %69

69:                                               ; preds = %66, %64
  %70 = call i32 @mutex_lock(i32* @rsrc_mutex)
  %71 = load %struct.resource*, %struct.resource** %11, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* %15, align 8
  %75 = load i32, i32* @pcmcia_align, align 4
  %76 = call i32 @allocate_resource(i32* @iomem_resource, %struct.resource* %71, i64 %72, i64 %73, i64 %74, i32 1, i32 %75, %struct.pcmcia_align_data* %13)
  store i32 %76, i32* %16, align 4
  %77 = call i32 @mutex_unlock(i32* @rsrc_mutex)
  %78 = load i32, i32* %16, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %69
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80, %69
  br label %88

84:                                               ; preds = %80
  store i32 1, i32* %9, align 4
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %17, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %17, align 4
  br label %51

88:                                               ; preds = %83, %51
  %89 = load i32, i32* %16, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.resource*, %struct.resource** %11, align 8
  %93 = call i32 @kfree(%struct.resource* %92)
  store %struct.resource* null, %struct.resource** %11, align 8
  br label %94

94:                                               ; preds = %91, %88
  %95 = load %struct.resource*, %struct.resource** %11, align 8
  ret %struct.resource* %95
}

declare dso_local %struct.resource* @make_resource(i32, i64, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @allocate_resource(i32*, %struct.resource*, i64, i64, i64, i32, i32, %struct.pcmcia_align_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
