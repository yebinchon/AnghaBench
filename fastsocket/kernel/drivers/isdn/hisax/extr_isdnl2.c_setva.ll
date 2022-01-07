; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_setva.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_setva.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PStack = type { %struct.TYPE_3__, %struct.Layer2 }
%struct.TYPE_3__ = type { i32 }
%struct.Layer2 = type { i32, i64, i32, i32, %struct.TYPE_4__**, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@FLG_MOD128 = common dso_local global i32 0, align 4
@PACKET_NOACK = common dso_local global i64 0, align 8
@FLG_LLI_L2WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.PStack*, i32)* @setva to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setva(%struct.PStack* %0, i32 %1) #0 {
  %3 = alloca %struct.PStack*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Layer2*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.PStack* %0, %struct.PStack** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.PStack*, %struct.PStack** %3, align 8
  %9 = getelementptr inbounds %struct.PStack, %struct.PStack* %8, i32 0, i32 1
  store %struct.Layer2* %9, %struct.Layer2** %5, align 8
  %10 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %11 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %10, i32 0, i32 3
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @spin_lock_irqsave(i32* %11, i32 %12)
  br label %14

14:                                               ; preds = %109, %2
  %15 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %16 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %114

20:                                               ; preds = %14
  %21 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %22 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load i32, i32* @FLG_MOD128, align 4
  %26 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %27 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %26, i32 0, i32 5
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %32 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = urem i32 %33, 128
  store i32 %34, i32* %32, align 8
  br label %40

35:                                               ; preds = %20
  %36 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %37 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = urem i32 %38, 8
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %42 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %41, i32 0, i32 4
  %43 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %42, align 8
  %44 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %45 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %43, i64 %46
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %6, align 4
  %51 = load i64, i64* @PACKET_NOACK, align 8
  %52 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %53 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %52, i32 0, i32 4
  %54 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %53, align 8
  %55 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %56 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %54, i64 %57
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %51, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %40
  store i32 -1, i32* %6, align 4
  br label %64

64:                                               ; preds = %63, %40
  %65 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %66 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %65, i32 0, i32 4
  %67 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %66, align 8
  %68 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %69 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %67, i64 %70
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = call i32 @dev_kfree_skb(%struct.TYPE_4__* %72)
  %74 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %75 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %74, i32 0, i32 4
  %76 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %75, align 8
  %77 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %78 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %76, i64 %79
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %80, align 8
  %81 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %82 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, 1
  %85 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %86 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = urem i64 %84, %88
  %90 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %91 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  %92 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %93 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %92, i32 0, i32 3
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i32 %94)
  %96 = load i32, i32* @FLG_LLI_L2WAKEUP, align 4
  %97 = load %struct.PStack*, %struct.PStack** %3, align 8
  %98 = getelementptr inbounds %struct.PStack, %struct.PStack* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = call i64 @test_bit(i32 %96, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %64
  %103 = load i32, i32* %6, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load %struct.PStack*, %struct.PStack** %3, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @lli_writewakeup(%struct.PStack* %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %102, %64
  %110 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %111 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %110, i32 0, i32 3
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @spin_lock_irqsave(i32* %111, i32 %112)
  br label %14

114:                                              ; preds = %14
  %115 = load %struct.Layer2*, %struct.Layer2** %5, align 8
  %116 = getelementptr inbounds %struct.Layer2, %struct.Layer2* %115, i32 0, i32 3
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i32 %117)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @lli_writewakeup(%struct.PStack*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
