; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c505.c_send_pcb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c505.c_send_pcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_10__ = type { i32, i64, i32, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i64 }

@elp_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: send_pcb entered while threaded\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"%s: timeout waiting for PCB acknowledge (status %02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.TYPE_9__*)* @send_pcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_pcb(%struct.net_device* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.TYPE_10__* @netdev_priv(%struct.net_device* %10)
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call i32 @check_3c505_dma(%struct.net_device* %12)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %152

25:                                               ; preds = %18, %2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = call i64 @test_and_set_bit(i32 1, i64* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i32, i32* @elp_debug, align 4
  %32 = icmp sge i32 %31, 3
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %33, %30
  store i32 0, i32* %3, align 4
  br label %152

39:                                               ; preds = %25
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = call i32 @set_hsf(%struct.net_device* %40, i32 0)
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @send_pcb_slow(i32 %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %149

51:                                               ; preds = %39
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @send_pcb_fast(i32 %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  br label %144

65:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %88, %65
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %66
  %73 = load %struct.net_device*, %struct.net_device** %4, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @send_pcb_fast(i32 %75, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %72
  br label %144

87:                                               ; preds = %72
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %66

91:                                               ; preds = %66
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, 3
  %96 = load %struct.net_device*, %struct.net_device** %4, align 8
  %97 = call i32 @outb_control(i32 %95, %struct.net_device* %96)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 2, %100
  %102 = load %struct.net_device*, %struct.net_device** %4, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @outb_command(i32 %101, i32 %104)
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  %108 = load i64, i64* %9, align 8
  %109 = call i32 @spin_unlock_irqrestore(i32* %107, i64 %108)
  %110 = load i32, i32* @jiffies, align 4
  %111 = load i32, i32* @HZ, align 4
  %112 = mul nsw i32 5, %111
  %113 = sdiv i32 %112, 100
  %114 = add nsw i32 %110, %113
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %7, align 8
  br label %116

116:                                              ; preds = %130, %91
  %117 = load i32, i32* @jiffies, align 4
  %118 = load i64, i64* %7, align 8
  %119 = call i64 @time_before(i32 %117, i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %116
  %122 = load %struct.net_device*, %struct.net_device** %4, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @GET_ASF(i32 %124)
  switch i32 %125, label %130 [
    i32 129, label %126
    i32 128, label %129
  ]

126:                                              ; preds = %121
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  store i64 0, i64* %128, align 8
  store i32 1, i32* %3, align 4
  br label %152

129:                                              ; preds = %121
  br label %149

130:                                              ; preds = %121
  br label %116

131:                                              ; preds = %116
  %132 = load i32, i32* @elp_debug, align 4
  %133 = icmp sge i32 %132, 1
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = load %struct.net_device*, %struct.net_device** %4, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.net_device*, %struct.net_device** %4, align 8
  %139 = getelementptr inbounds %struct.net_device, %struct.net_device* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @inb_status(i32 %140)
  %142 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %137, i32 %141)
  br label %143

143:                                              ; preds = %134, %131
  br label %149

144:                                              ; preds = %86, %64
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  %147 = load i64, i64* %9, align 8
  %148 = call i32 @spin_unlock_irqrestore(i32* %146, i64 %147)
  br label %149

149:                                              ; preds = %144, %143, %129, %50
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  store i64 0, i64* %151, align 8
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %149, %126, %38, %24
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.TYPE_10__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @check_3c505_dma(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i64*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @set_hsf(%struct.net_device*, i32) #1

declare dso_local i64 @send_pcb_slow(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @send_pcb_fast(i32, i32) #1

declare dso_local i32 @outb_control(i32, %struct.net_device*) #1

declare dso_local i32 @outb_command(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @GET_ASF(i32) #1

declare dso_local i32 @inb_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
