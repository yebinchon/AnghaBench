; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_invoke_retransmission.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_invoke_retransmission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PStack = type { %struct.Layer2, %struct.TYPE_5__ }
%struct.Layer2 = type { i32, i32, i64, i64, i32, i32 (%struct.PStack.0*, i32, i32*)*, %struct.TYPE_6__**, i32, i32 }
%struct.PStack.0 = type opaque
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@FLG_MOD128 = common dso_local global i32 0, align 4
@FLG_LAPB = common dso_local global i32 0, align 4
@PH_PULL = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.PStack*, i32)* @invoke_retransmission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @invoke_retransmission(%struct.PStack* %0, i32 %1) #0 {
  %3 = alloca %struct.PStack*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Layer2*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.PStack* %0, %struct.PStack** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.PStack*, %struct.PStack** %3, align 8
  %9 = getelementptr inbounds %struct.PStack, %struct.PStack* %8, i32 0, i32 0
  store %struct.Layer2* %9, %struct.Layer2** %5, align 8
  %10 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %11 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %10, i32 0, i32 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @spin_lock_irqsave(i32* %11, i32 %12)
  %14 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %15 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %130

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %100, %19
  %21 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %22 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %115

26:                                               ; preds = %20
  %27 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %28 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add i32 %29, -1
  store i32 %30, i32* %28, align 8
  %31 = load i32, i32* @FLG_MOD128, align 4
  %32 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %33 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %32, i32 0, i32 8
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %26
  %37 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %38 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = urem i32 %39, 128
  store i32 %40, i32* %38, align 8
  %41 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %42 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %45 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sub i32 %43, %46
  %48 = urem i32 %47, 128
  %49 = zext i32 %48 to i64
  store i64 %49, i64* %6, align 8
  br label %64

50:                                               ; preds = %26
  %51 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %52 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = urem i32 %53, 8
  store i32 %54, i32* %52, align 8
  %55 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %56 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %59 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sub i32 %57, %60
  %62 = urem i32 %61, 8
  %63 = zext i32 %62 to i64
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %50, %36
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %67 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %65, %68
  %70 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %71 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = urem i64 %69, %72
  store i64 %73, i64* %6, align 8
  %74 = load i32, i32* @FLG_LAPB, align 4
  %75 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %76 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %75, i32 0, i32 8
  %77 = call i64 @test_bit(i32 %74, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %100

79:                                               ; preds = %64
  %80 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %81 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %80, i32 0, i32 6
  %82 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %82, i64 %83
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %89 = call i64 @l2headersize(%struct.Layer2* %88, i32 0)
  %90 = add nsw i64 %87, %89
  %91 = load %struct.PStack*, %struct.PStack** %3, align 8
  %92 = getelementptr inbounds %struct.PStack, %struct.PStack* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %90
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %95, align 4
  br label %100

100:                                              ; preds = %79, %64
  %101 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %102 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %101, i32 0, i32 7
  %103 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %104 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %103, i32 0, i32 6
  %105 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %104, align 8
  %106 = load i64, i64* %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %105, i64 %106
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = call i32 @skb_queue_head(i32* %102, %struct.TYPE_6__* %108)
  %110 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %111 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %110, i32 0, i32 6
  %112 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %111, align 8
  %113 = load i64, i64* %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %112, i64 %113
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %114, align 8
  br label %20

115:                                              ; preds = %20
  %116 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %117 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %116, i32 0, i32 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @spin_unlock_irqrestore(i32* %117, i32 %118)
  %120 = load %struct.PStack*, %struct.PStack** %3, align 8
  %121 = getelementptr inbounds %struct.PStack, %struct.PStack* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %121, i32 0, i32 5
  %123 = load i32 (%struct.PStack.0*, i32, i32*)*, i32 (%struct.PStack.0*, i32, i32*)** %122, align 8
  %124 = load %struct.PStack*, %struct.PStack** %3, align 8
  %125 = bitcast %struct.PStack* %124 to %struct.PStack.0*
  %126 = load i32, i32* @PH_PULL, align 4
  %127 = load i32, i32* @REQUEST, align 4
  %128 = or i32 %126, %127
  %129 = call i32 %123(%struct.PStack.0* %125, i32 %128, i32* null)
  br label %135

130:                                              ; preds = %2
  %131 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %132 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %131, i32 0, i32 4
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @spin_unlock_irqrestore(i32* %132, i32 %133)
  br label %135

135:                                              ; preds = %130, %115
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @l2headersize(%struct.Layer2*, i32) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
