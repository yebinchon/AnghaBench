; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_layer2.c_pcbit_l2_err_recover.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_layer2.c_pcbit_l2_err_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcbit_dev = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, %struct.frame_buf*, %struct.frame_buf*, %struct.TYPE_4__ }
%struct.frame_buf = type { i64, i64, %struct.frame_buf* }
%struct.TYPE_4__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@ERRTIME = common dso_local global i64 0, align 8
@L2_ERROR = common dso_local global i32 0, align 4
@BANK2 = common dso_local global i64 0, align 8
@BANK4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @pcbit_l2_err_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcbit_l2_err_recover(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pcbit_dev*, align 8
  %4 = alloca %struct.frame_buf*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.pcbit_dev*
  store %struct.pcbit_dev* %6, %struct.pcbit_dev** %3, align 8
  %7 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %8 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %7, i32 0, i32 12
  %9 = call i32 @del_timer(%struct.TYPE_4__* %8)
  %10 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %11 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %16 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %14, %1
  %20 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %21 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %20, i32 0, i32 12
  %22 = call i32 @init_timer(%struct.TYPE_4__* %21)
  %23 = load i64, i64* @jiffies, align 8
  %24 = load i64, i64* @ERRTIME, align 8
  %25 = add nsw i64 %23, %24
  %26 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %27 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %26, i32 0, i32 12
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  %29 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %30 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %29, i32 0, i32 12
  %31 = call i32 @add_timer(%struct.TYPE_4__* %30)
  br label %112

32:                                               ; preds = %14
  %33 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %34 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %36 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %38 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %37, i32 0, i32 11
  %39 = load %struct.frame_buf*, %struct.frame_buf** %38, align 8
  %40 = icmp ne %struct.frame_buf* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %32
  %42 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %43 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %42, i32 0, i32 11
  %44 = load %struct.frame_buf*, %struct.frame_buf** %43, align 8
  %45 = getelementptr inbounds %struct.frame_buf, %struct.frame_buf* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @kfree_skb(i64 %46)
  %48 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %49 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %48, i32 0, i32 11
  %50 = load %struct.frame_buf*, %struct.frame_buf** %49, align 8
  %51 = call i32 @kfree(%struct.frame_buf* %50)
  %52 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %53 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %52, i32 0, i32 11
  store %struct.frame_buf* null, %struct.frame_buf** %53, align 8
  br label %54

54:                                               ; preds = %41, %32
  %55 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %56 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %55, i32 0, i32 10
  %57 = load %struct.frame_buf*, %struct.frame_buf** %56, align 8
  %58 = icmp ne %struct.frame_buf* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %61 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %60, i32 0, i32 10
  %62 = load %struct.frame_buf*, %struct.frame_buf** %61, align 8
  store %struct.frame_buf* %62, %struct.frame_buf** %4, align 8
  %63 = load %struct.frame_buf*, %struct.frame_buf** %4, align 8
  %64 = getelementptr inbounds %struct.frame_buf, %struct.frame_buf* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %59, %54
  %66 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %67 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %66, i32 0, i32 4
  store i32 0, i32* %67, align 8
  %68 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %69 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %68, i32 0, i32 3
  store i32 0, i32* %69, align 4
  %70 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %71 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %70, i32 0, i32 2
  store i32 0, i32* %71, align 8
  %72 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %73 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %72, i32 0, i32 5
  store i32 511, i32* %73, align 4
  %74 = load i32, i32* @L2_ERROR, align 4
  %75 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %76 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %75, i32 0, i32 9
  store i32 %74, i32* %76, align 8
  %77 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %78 = call i32 @pcbit_firmware_bug(%struct.pcbit_dev* %77)
  %79 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %80 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %79, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %83 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %82, i32 0, i32 8
  store i64 %81, i64* %83, align 8
  %84 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %85 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %84, i32 0, i32 6
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @BANK2, align 8
  %88 = add nsw i64 %86, %87
  %89 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %90 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %89, i32 0, i32 7
  store i64 %88, i64* %90, align 8
  %91 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %92 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, 7
  %95 = shl i32 %94, 3
  %96 = or i32 128, %95
  %97 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %98 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 7
  %101 = or i32 %96, %100
  %102 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %103 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %102, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @BANK4, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @writeb(i32 %101, i64 %106)
  %108 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %109 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %108, i32 0, i32 1
  store i32 0, i32* %109, align 4
  %110 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %111 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  br label %112

112:                                              ; preds = %65, %19
  ret void
}

declare dso_local i32 @del_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree_skb(i64) #1

declare dso_local i32 @kfree(%struct.frame_buf*) #1

declare dso_local i32 @pcbit_firmware_bug(%struct.pcbit_dev*) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
