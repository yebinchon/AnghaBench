; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_intr.c_handle_urcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_intr.c_handle_urcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i64, %struct.ipath_portdata** }
%struct.TYPE_2__ = type { i32 }
%struct.ipath_portdata = type { i32, i32, i32, i64 }

@IPATH_PORT_WAITING_RCV = common dso_local global i32 0, align 4
@IPATH_PORT_WAITING_URG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_devdata*, i32)* @handle_urcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_urcv(%struct.ipath_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.ipath_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipath_portdata*, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %9 = call i32 (...) @rmb()
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %12 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = ashr i32 %10, %13
  %15 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %16 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %14, %17
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %21 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = ashr i32 %19, %22
  %24 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %25 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %23, %26
  %28 = or i32 %18, %27
  store i32 %28, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %29

29:                                               ; preds = %92, %2
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %32 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %95

35:                                               ; preds = %29
  %36 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %37 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %36, i32 0, i32 8
  %38 = load %struct.ipath_portdata**, %struct.ipath_portdata*** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ipath_portdata*, %struct.ipath_portdata** %38, i64 %40
  %42 = load %struct.ipath_portdata*, %struct.ipath_portdata** %41, align 8
  store %struct.ipath_portdata* %42, %struct.ipath_portdata** %8, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = shl i32 1, %44
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %91

48:                                               ; preds = %35
  %49 = load %struct.ipath_portdata*, %struct.ipath_portdata** %8, align 8
  %50 = icmp ne %struct.ipath_portdata* %49, null
  br i1 %50, label %51, label %91

51:                                               ; preds = %48
  %52 = load %struct.ipath_portdata*, %struct.ipath_portdata** %8, align 8
  %53 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %51
  %57 = load i32, i32* @IPATH_PORT_WAITING_RCV, align 4
  %58 = load %struct.ipath_portdata*, %struct.ipath_portdata** %8, align 8
  %59 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %58, i32 0, i32 2
  %60 = call i64 @test_and_clear_bit(i32 %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %56
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %66 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %65, i32 0, i32 7
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %70 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %69, i32 0, i32 5
  %71 = call i32 @clear_bit(i64 %68, i32* %70)
  %72 = load %struct.ipath_portdata*, %struct.ipath_portdata** %8, align 8
  %73 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %72, i32 0, i32 0
  %74 = call i32 @wake_up_interruptible(i32* %73)
  store i32 1, i32* %7, align 4
  br label %90

75:                                               ; preds = %56
  %76 = load i32, i32* @IPATH_PORT_WAITING_URG, align 4
  %77 = load %struct.ipath_portdata*, %struct.ipath_portdata** %8, align 8
  %78 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %77, i32 0, i32 2
  %79 = call i64 @test_and_clear_bit(i32 %76, i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %75
  %82 = load %struct.ipath_portdata*, %struct.ipath_portdata** %8, align 8
  %83 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = load %struct.ipath_portdata*, %struct.ipath_portdata** %8, align 8
  %87 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %86, i32 0, i32 0
  %88 = call i32 @wake_up_interruptible(i32* %87)
  br label %89

89:                                               ; preds = %81, %75
  br label %90

90:                                               ; preds = %89, %62
  br label %91

91:                                               ; preds = %90, %51, %48, %35
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %29

95:                                               ; preds = %29
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %95
  %99 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %100 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %101 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %100, i32 0, i32 6
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %106 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %99, i32 %104, i32 %107)
  br label %109

109:                                              ; preds = %98, %95
  ret void
}

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i64, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
