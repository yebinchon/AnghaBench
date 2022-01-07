; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/act2000/extr_act2000_isa.c_act2000_isa_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/act2000/extr_act2000_isa.c_act2000_isa_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.sk_buff*, i32, i64, i32*, i32, i32, i32 }
%struct.sk_buff = type { i32*, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64 }

@ACT2000_LOCK_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @act2000_isa_send(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %7 = load i32, i32* @ACT2000_LOCK_TX, align 4
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 4
  %10 = bitcast i32* %9 to i8*
  %11 = call i64 @test_and_set_bit(i32 %7, i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %158

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %155
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 5
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %72, label %24

24:                                               ; preds = %15
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 6
  %27 = call %struct.sk_buff* @skb_dequeue(i32* %26)
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  store %struct.sk_buff* %27, %struct.sk_buff** %29, align 8
  %30 = icmp ne %struct.sk_buff* %27, null
  br i1 %30, label %31, label %71

31:                                               ; preds = %24
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load %struct.sk_buff*, %struct.sk_buff** %33, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 3
  store i32* %36, i32** %38, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load %struct.sk_buff*, %struct.sk_buff** %40, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = bitcast i32* %43 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %44, %struct.TYPE_14__** %5, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 134
  br i1 %50, label %51, label %70

51:                                               ; preds = %31
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %51
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %58, %51, %31
  br label %71

71:                                               ; preds = %70, %24
  br label %72

72:                                               ; preds = %71, %15
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 5
  %75 = load i64, i64* %3, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load %struct.sk_buff*, %struct.sk_buff** %78, align 8
  %80 = icmp ne %struct.sk_buff* %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %72
  %82 = load i32, i32* @ACT2000_LOCK_TX, align 4
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 4
  %85 = bitcast i32* %84 to i8*
  %86 = call i32 @test_and_clear_bit(i32 %82, i8* %85)
  br label %158

87:                                               ; preds = %72
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load %struct.sk_buff*, %struct.sk_buff** %89, align 8
  store %struct.sk_buff* %90, %struct.sk_buff** %4, align 8
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %112, %87
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %117

96:                                               ; preds = %91
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @act2000_isa_writeb(%struct.TYPE_15__* %97, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %96
  %105 = load i32, i32* @ACT2000_LOCK_TX, align 4
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 4
  %108 = bitcast i32* %107 to i8*
  %109 = call i32 @test_and_clear_bit(i32 %105, i8* %108)
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %111 = call i32 @act2000_schedule_tx(%struct.TYPE_15__* %110)
  br label %158

112:                                              ; preds = %96
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %114 = call i32 @skb_pull(%struct.sk_buff* %113, i32 1)
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %91

117:                                              ; preds = %91
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = bitcast i32* %120 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %121, %struct.TYPE_14__** %5, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 134
  br i1 %127, label %128, label %152

128:                                              ; preds = %117
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %152

135:                                              ; preds = %128
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %140 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %139, i32 0, i32 0
  store i32* %138, i32** %140, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  store i64 %143, i64* %147, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 1
  %150 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %151 = call i32 @skb_queue_tail(i32* %149, %struct.sk_buff* %150)
  br label %155

152:                                              ; preds = %128, %117
  %153 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %154 = call i32 @dev_kfree_skb(%struct.sk_buff* %153)
  br label %155

155:                                              ; preds = %152, %135
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %157, align 8
  br label %15

158:                                              ; preds = %104, %81, %13
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @test_and_clear_bit(i32, i8*) #1

declare dso_local i64 @act2000_isa_writeb(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @act2000_schedule_tx(%struct.TYPE_15__*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
