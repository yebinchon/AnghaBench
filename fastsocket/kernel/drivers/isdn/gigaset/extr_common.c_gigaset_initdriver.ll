; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_common.c_gigaset_initdriver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_common.c_gigaset_initdriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gigaset_driver = type { i32, i32, i32, %struct.gigaset_driver*, i32, i32, %struct.gigaset_ops*, %struct.gigaset_driver*, i64, %struct.module*, i64, i32, i64 }
%struct.gigaset_ops = type { i32 }
%struct.module = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@driver_lock = common dso_local global i32 0, align 4
@drivers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gigaset_driver* @gigaset_initdriver(i32 %0, i32 %1, i8* %2, i8* %3, %struct.gigaset_ops* %4, %struct.module* %5) #0 {
  %7 = alloca %struct.gigaset_driver*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.gigaset_ops*, align 8
  %13 = alloca %struct.module*, align 8
  %14 = alloca %struct.gigaset_driver*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.gigaset_ops* %4, %struct.gigaset_ops** %12, align 8
  store %struct.module* %5, %struct.module** %13, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kmalloc(i32 88, i32 %17)
  %19 = bitcast i8* %18 to %struct.gigaset_driver*
  store %struct.gigaset_driver* %19, %struct.gigaset_driver** %14, align 8
  %20 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %21 = icmp ne %struct.gigaset_driver* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %6
  store %struct.gigaset_driver* null, %struct.gigaset_driver** %7, align 8
  br label %130

23:                                               ; preds = %6
  %24 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %25 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %24, i32 0, i32 12
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %28 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %31 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %33 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %32, i32 0, i32 11
  %34 = call i32 @spin_lock_init(i32* %33)
  %35 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %36 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %35, i32 0, i32 10
  store i64 0, i64* %36, align 8
  %37 = load %struct.gigaset_ops*, %struct.gigaset_ops** %12, align 8
  %38 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %39 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %38, i32 0, i32 6
  store %struct.gigaset_ops* %37, %struct.gigaset_ops** %39, align 8
  %40 = load %struct.module*, %struct.module** %13, align 8
  %41 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %42 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %41, i32 0, i32 9
  store %struct.module* %40, %struct.module** %42, align 8
  %43 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %44 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %43, i32 0, i32 4
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = mul i64 %47, 88
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @kmalloc(i32 %49, i32 %50)
  %52 = bitcast i8* %51 to %struct.gigaset_driver*
  %53 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %54 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %53, i32 0, i32 3
  store %struct.gigaset_driver* %52, %struct.gigaset_driver** %54, align 8
  %55 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %56 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %55, i32 0, i32 3
  %57 = load %struct.gigaset_driver*, %struct.gigaset_driver** %56, align 8
  %58 = icmp ne %struct.gigaset_driver* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %23
  br label %123

60:                                               ; preds = %23
  store i32 0, i32* %16, align 4
  br label %61

61:                                               ; preds = %107, %60
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %110

65:                                               ; preds = %61
  %66 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %67 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %66, i32 0, i32 3
  %68 = load %struct.gigaset_driver*, %struct.gigaset_driver** %67, align 8
  %69 = load i32, i32* %16, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %68, i64 %70
  %72 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %71, i32 0, i32 8
  store i64 0, i64* %72, align 8
  %73 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %74 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %75 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %74, i32 0, i32 3
  %76 = load %struct.gigaset_driver*, %struct.gigaset_driver** %75, align 8
  %77 = load i32, i32* %16, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %76, i64 %78
  %80 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %79, i32 0, i32 7
  store %struct.gigaset_driver* %73, %struct.gigaset_driver** %80, align 8
  %81 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %82 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %81, i32 0, i32 6
  %83 = load %struct.gigaset_ops*, %struct.gigaset_ops** %82, align 8
  %84 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %85 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %84, i32 0, i32 3
  %86 = load %struct.gigaset_driver*, %struct.gigaset_driver** %85, align 8
  %87 = load i32, i32* %16, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %86, i64 %88
  %90 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %89, i32 0, i32 6
  store %struct.gigaset_ops* %83, %struct.gigaset_ops** %90, align 8
  %91 = load i32, i32* %16, align 4
  %92 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %93 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %92, i32 0, i32 3
  %94 = load %struct.gigaset_driver*, %struct.gigaset_driver** %93, align 8
  %95 = load i32, i32* %16, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %94, i64 %96
  %98 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %97, i32 0, i32 2
  store i32 %91, i32* %98, align 8
  %99 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %100 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %99, i32 0, i32 3
  %101 = load %struct.gigaset_driver*, %struct.gigaset_driver** %100, align 8
  %102 = load i32, i32* %16, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %101, i64 %103
  %105 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %104, i32 0, i32 5
  %106 = call i32 @mutex_init(i32* %105)
  br label %107

107:                                              ; preds = %65
  %108 = load i32, i32* %16, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %16, align 4
  br label %61

110:                                              ; preds = %61
  %111 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %112 = load i8*, i8** %10, align 8
  %113 = load i8*, i8** %11, align 8
  %114 = call i32 @gigaset_if_initdriver(%struct.gigaset_driver* %111, i8* %112, i8* %113)
  %115 = load i64, i64* %15, align 8
  %116 = call i32 @spin_lock_irqsave(i32* @driver_lock, i64 %115)
  %117 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %118 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %117, i32 0, i32 4
  %119 = call i32 @list_add(i32* %118, i32* @drivers)
  %120 = load i64, i64* %15, align 8
  %121 = call i32 @spin_unlock_irqrestore(i32* @driver_lock, i64 %120)
  %122 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  store %struct.gigaset_driver* %122, %struct.gigaset_driver** %7, align 8
  br label %130

123:                                              ; preds = %59
  %124 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %125 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %124, i32 0, i32 3
  %126 = load %struct.gigaset_driver*, %struct.gigaset_driver** %125, align 8
  %127 = call i32 @kfree(%struct.gigaset_driver* %126)
  %128 = load %struct.gigaset_driver*, %struct.gigaset_driver** %14, align 8
  %129 = call i32 @kfree(%struct.gigaset_driver* %128)
  store %struct.gigaset_driver* null, %struct.gigaset_driver** %7, align 8
  br label %130

130:                                              ; preds = %123, %110, %22
  %131 = load %struct.gigaset_driver*, %struct.gigaset_driver** %7, align 8
  ret %struct.gigaset_driver* %131
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @gigaset_if_initdriver(%struct.gigaset_driver*, i8*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.gigaset_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
