; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_usb-rx.c_i2400mu_rxd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_usb-rx.c_i2400mu_rxd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400mu = type { i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32, %struct.i2400m }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.i2400m = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"(i2400mu %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"TX: waiting for messages\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"RX: reading up to %d bytes\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"RX: can't allocate skb [%d bytes]\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EDC_MAX_ERRORS = common dso_local global i32 0, align 4
@EDC_ERROR_TIMEFRAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"(i2400mu %p) = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"RX: maximum errors in received buffer exceeded; resetting device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @i2400mu_rxd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400mu_rxd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2400mu*, align 8
  %5 = alloca %struct.i2400m*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.i2400mu*
  store %struct.i2400mu* %12, %struct.i2400mu** %4, align 8
  %13 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %14 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %13, i32 0, i32 7
  store %struct.i2400m* %14, %struct.i2400m** %5, align 8
  %15 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %16 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %6, align 8
  %19 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %20 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %7, align 8
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %25 = call i32 @d_fnstart(i32 4, %struct.device* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.i2400mu* %24)
  br label %26

26:                                               ; preds = %1, %49, %63, %89, %121
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  %29 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %30 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = call i64 (...) @kthread_should_stop()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %26
  %35 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %36 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %35, i32 0, i32 5
  %37 = call i64 @atomic_read(i32* %36)
  store i64 %37, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %34, %26
  %40 = phi i1 [ true, %26 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @wait_event_interruptible(i32 %31, i32 %41)
  %43 = call i64 (...) @kthread_should_stop()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %124

46:                                               ; preds = %39
  %47 = load i64, i64* %8, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %26

50:                                               ; preds = %46
  %51 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %52 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %9, align 4
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (i32, %struct.device*, i8*, ...) @d_printf(i32 2, %struct.device* %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load %struct.net_device*, %struct.net_device** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.sk_buff* @__netdev_alloc_skb(%struct.net_device* %57, i32 %58, i32 %59)
  store %struct.sk_buff* %60, %struct.sk_buff** %10, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %62 = icmp eq %struct.sk_buff* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %50
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = call i32 @msleep(i32 50)
  br label %26

68:                                               ; preds = %50
  %69 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %71 = call %struct.sk_buff* @i2400mu_rx(%struct.i2400mu* %69, %struct.sk_buff* %70)
  store %struct.sk_buff* %71, %struct.sk_buff** %10, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %73 = call i32 @PTR_ERR(%struct.sk_buff* %72)
  store i32 %73, i32* %3, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %75 = call i64 @IS_ERR(%struct.sk_buff* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %125

78:                                               ; preds = %68
  %79 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %80 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %79, i32 0, i32 5
  %81 = call i32 @atomic_dec(i32* %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %83 = icmp eq %struct.sk_buff* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %78
  %85 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84, %78
  %90 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %91 = call i32 @kfree_skb(%struct.sk_buff* %90)
  br label %26

92:                                               ; preds = %84
  %93 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %94 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %101 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %99
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 4
  %106 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %108 = call i32 @i2400m_rx(%struct.i2400m* %106, %struct.sk_buff* %107)
  store i32 %108, i32* %3, align 4
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @EIO, align 4
  %111 = sub nsw i32 0, %110
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %92
  %114 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %115 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %114, i32 0, i32 2
  %116 = load i32, i32* @EDC_MAX_ERRORS, align 4
  %117 = load i32, i32* @EDC_ERROR_TIMEFRAME, align 4
  %118 = call i64 @edc_inc(i32* %115, i32 %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  br label %131

121:                                              ; preds = %113, %92
  %122 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %123 = call i32 @i2400mu_rx_size_maybe_shrink(%struct.i2400mu* %122)
  br label %26

124:                                              ; preds = %45
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %131, %124, %77
  %126 = load %struct.device*, %struct.device** %6, align 8
  %127 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %128 = load i32, i32* %3, align 4
  %129 = call i32 @d_fnend(i32 4, %struct.device* %126, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), %struct.i2400mu* %127, i32 %128)
  %130 = load i32, i32* %3, align 4
  ret i32 %130

131:                                              ; preds = %120
  %132 = load %struct.device*, %struct.device** %6, align 8
  %133 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %132, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0))
  %134 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %135 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %134, i32 0, i32 1
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = call i32 @usb_queue_reset_device(%struct.TYPE_4__* %136)
  br label %125
}

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400mu*) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, ...) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.sk_buff* @__netdev_alloc_skb(%struct.net_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local %struct.sk_buff* @i2400mu_rx(%struct.i2400mu*, %struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @i2400m_rx(%struct.i2400m*, %struct.sk_buff*) #1

declare dso_local i64 @edc_inc(i32*, i32, i32) #1

declare dso_local i32 @i2400mu_rx_size_maybe_shrink(%struct.i2400mu*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400mu*, i32) #1

declare dso_local i32 @usb_queue_reset_device(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
