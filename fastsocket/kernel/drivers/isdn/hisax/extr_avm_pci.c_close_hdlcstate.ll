; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_avm_pci.c_close_hdlcstate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_avm_pci.c_close_hdlcstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i32, i32*, i32, i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@BC_FLG_INIT = common dso_local global i32 0, align 4
@BC_FLG_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*)* @close_hdlcstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_hdlcstate(%struct.BCState* %0) #0 {
  %2 = alloca %struct.BCState*, align 8
  store %struct.BCState* %0, %struct.BCState** %2, align 8
  %3 = load %struct.BCState*, %struct.BCState** %2, align 8
  %4 = call i32 @modehdlc(%struct.BCState* %3, i32 0, i32 0)
  %5 = load i32, i32* @BC_FLG_INIT, align 4
  %6 = load %struct.BCState*, %struct.BCState** %2, align 8
  %7 = getelementptr inbounds %struct.BCState, %struct.BCState* %6, i32 0, i32 0
  %8 = call i64 @test_and_clear_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %49

10:                                               ; preds = %1
  %11 = load %struct.BCState*, %struct.BCState** %2, align 8
  %12 = getelementptr inbounds %struct.BCState, %struct.BCState* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @kfree(i32* %15)
  %17 = load %struct.BCState*, %struct.BCState** %2, align 8
  %18 = getelementptr inbounds %struct.BCState, %struct.BCState* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load %struct.BCState*, %struct.BCState** %2, align 8
  %22 = getelementptr inbounds %struct.BCState, %struct.BCState* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @kfree(i32* %23)
  %25 = load %struct.BCState*, %struct.BCState** %2, align 8
  %26 = getelementptr inbounds %struct.BCState, %struct.BCState* %25, i32 0, i32 4
  store i32* null, i32** %26, align 8
  %27 = load %struct.BCState*, %struct.BCState** %2, align 8
  %28 = getelementptr inbounds %struct.BCState, %struct.BCState* %27, i32 0, i32 3
  %29 = call i32 @skb_queue_purge(i32* %28)
  %30 = load %struct.BCState*, %struct.BCState** %2, align 8
  %31 = getelementptr inbounds %struct.BCState, %struct.BCState* %30, i32 0, i32 2
  %32 = call i32 @skb_queue_purge(i32* %31)
  %33 = load %struct.BCState*, %struct.BCState** %2, align 8
  %34 = getelementptr inbounds %struct.BCState, %struct.BCState* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %10
  %38 = load %struct.BCState*, %struct.BCState** %2, align 8
  %39 = getelementptr inbounds %struct.BCState, %struct.BCState* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @dev_kfree_skb_any(i32* %40)
  %42 = load %struct.BCState*, %struct.BCState** %2, align 8
  %43 = getelementptr inbounds %struct.BCState, %struct.BCState* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  %44 = load i32, i32* @BC_FLG_BUSY, align 4
  %45 = load %struct.BCState*, %struct.BCState** %2, align 8
  %46 = getelementptr inbounds %struct.BCState, %struct.BCState* %45, i32 0, i32 0
  %47 = call i64 @test_and_clear_bit(i32 %44, i32* %46)
  br label %48

48:                                               ; preds = %37, %10
  br label %49

49:                                               ; preds = %48, %1
  ret void
}

declare dso_local i32 @modehdlc(%struct.BCState*, i32, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
