; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_bitbang.c_spi_bitbang_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_bitbang.c_spi_bitbang_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_bitbang = type { i32, i32*, %struct.TYPE_4__*, i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i64, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@bitbang_work = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@spi_bitbang_transfer = common dso_local global i64 0, align 8
@spi_bitbang_bufs = common dso_local global i64 0, align 8
@spi_bitbang_setup_transfer = common dso_local global i64 0, align 8
@spi_bitbang_setup = common dso_local global i64 0, align 8
@spi_bitbang_cleanup = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_bitbang_start(%struct.spi_bitbang* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_bitbang*, align 8
  %4 = alloca i32, align 4
  store %struct.spi_bitbang* %0, %struct.spi_bitbang** %3, align 8
  %5 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %6 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %11 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %10, i32 0, i32 10
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9, %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %145

17:                                               ; preds = %9
  %18 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %19 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %18, i32 0, i32 9
  %20 = load i32, i32* @bitbang_work, align 4
  %21 = call i32 @INIT_WORK(i32* %19, i32 %20)
  %22 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %23 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %22, i32 0, i32 8
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %26 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %25, i32 0, i32 7
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %29 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %17
  %35 = load i32, i32* @SPI_CPOL, align 4
  %36 = load i32, i32* @SPI_CPHA, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %39 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %37, %40
  %42 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %43 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 8
  br label %46

46:                                               ; preds = %34, %17
  %47 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %48 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %46
  %54 = load i64, i64* @spi_bitbang_transfer, align 8
  %55 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %56 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 4
  store i64 %54, i64* %58, align 8
  br label %59

59:                                               ; preds = %53, %46
  %60 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %61 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %97, label %64

64:                                               ; preds = %59
  %65 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %66 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %65, i32 0, i32 6
  store i64 0, i64* %66, align 8
  %67 = load i64, i64* @spi_bitbang_bufs, align 8
  %68 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %69 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %68, i32 0, i32 5
  store i64 %67, i64* %69, align 8
  %70 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %71 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %96, label %76

76:                                               ; preds = %64
  %77 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %78 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %76
  %82 = load i64, i64* @spi_bitbang_setup_transfer, align 8
  %83 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %84 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %83, i32 0, i32 4
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %81, %76
  %86 = load i64, i64* @spi_bitbang_setup, align 8
  %87 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %88 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %87, i32 0, i32 2
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  store i64 %86, i64* %90, align 8
  %91 = load i32, i32* @spi_bitbang_cleanup, align 4
  %92 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %93 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %92, i32 0, i32 2
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  store i32 %91, i32* %95, align 8
  br label %96

96:                                               ; preds = %85, %64
  br label %108

97:                                               ; preds = %59
  %98 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %99 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %97
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %145

107:                                              ; preds = %97
  br label %108

108:                                              ; preds = %107, %96
  %109 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %110 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %109, i32 0, i32 3
  store i64 0, i64* %110, align 8
  %111 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %112 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %111, i32 0, i32 2
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @dev_name(i32 %116)
  %118 = call i32* @create_singlethread_workqueue(i32 %117)
  %119 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %120 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %119, i32 0, i32 1
  store i32* %118, i32** %120, align 8
  %121 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %122 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %108
  %126 = load i32, i32* @EBUSY, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %4, align 4
  br label %143

128:                                              ; preds = %108
  %129 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %130 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %129, i32 0, i32 2
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = call i32 @spi_register_master(%struct.TYPE_4__* %131)
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %4, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %138

136:                                              ; preds = %128
  %137 = load i32, i32* %4, align 4
  store i32 %137, i32* %2, align 4
  br label %145

138:                                              ; preds = %135
  %139 = load %struct.spi_bitbang*, %struct.spi_bitbang** %3, align 8
  %140 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @destroy_workqueue(i32* %141)
  br label %143

143:                                              ; preds = %138, %125
  %144 = load i32, i32* %4, align 4
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %143, %136, %104, %14
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32* @create_singlethread_workqueue(i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @spi_register_master(%struct.TYPE_4__*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
