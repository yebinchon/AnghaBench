; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_atmel_set_wap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_atmel_set_wap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.sockaddr = type { i64, i32 }
%struct.atmel_private = type { i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32*, i64 }

@atmel_set_wap.any = internal constant [6 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@atmel_set_wap.off = internal constant [6 x i32] zeroinitializer, align 16
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.sockaddr*, i8*)* @atmel_set_wap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_set_wap(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.sockaddr* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.atmel_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.atmel_private* @netdev_priv(%struct.net_device* %13)
  store %struct.atmel_private* %14, %struct.atmel_private** %10, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %16 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ARPHRD_ETHER, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %128

23:                                               ; preds = %4
  %24 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %25 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @memcmp(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @atmel_set_wap.any, i64 0, i64 0), i32 %26, i32 6)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %31 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @memcmp(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @atmel_set_wap.off, i64 0, i64 0), i32 %32, i32 6)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %29, %23
  %36 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %37 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %36, i32 0, i32 2
  %38 = call i32 @del_timer_sync(i32* %37)
  %39 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %40 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %39, i32 0, i32 1
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %44 = call i32 @atmel_scan(%struct.atmel_private* %43, i32 1)
  %45 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %46 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %45, i32 0, i32 1
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  store i32 0, i32* %5, align 4
  br label %128

49:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %122, %49
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %53 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %125

56:                                               ; preds = %50
  %57 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %58 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %57, i32 0, i32 3
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %66 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @memcmp(i32* %64, i32 %67, i32 6)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %121

70:                                               ; preds = %56
  %71 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %72 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %70
  %76 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %77 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %76, i32 0, i32 3
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %75
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %128

88:                                               ; preds = %75, %70
  %89 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %90 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %88
  %94 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %95 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %94, i32 0, i32 3
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %93
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %5, align 4
  br label %128

106:                                              ; preds = %93, %88
  %107 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %108 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %107, i32 0, i32 2
  %109 = call i32 @del_timer_sync(i32* %108)
  %110 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %111 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %110, i32 0, i32 1
  %112 = load i64, i64* %12, align 8
  %113 = call i32 @spin_lock_irqsave(i32* %111, i64 %112)
  %114 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @atmel_join_bss(%struct.atmel_private* %114, i32 %115)
  %117 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %118 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %117, i32 0, i32 1
  %119 = load i64, i64* %12, align 8
  %120 = call i32 @spin_unlock_irqrestore(i32* %118, i64 %119)
  store i32 0, i32* %5, align 4
  br label %128

121:                                              ; preds = %56
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  br label %50

125:                                              ; preds = %50
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %125, %106, %103, %85, %35, %20
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local %struct.atmel_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atmel_scan(%struct.atmel_private*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atmel_join_bss(%struct.atmel_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
