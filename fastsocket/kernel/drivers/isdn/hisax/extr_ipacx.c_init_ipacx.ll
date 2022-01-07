; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_ipacx.c_init_ipacx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_ipacx.c_init_ipacx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)* }

@IPACX_MASKB = common dso_local global i32 0, align 4
@_MASKB_IMASK = common dso_local global i32 0, align 4
@IPACX_MASKD = common dso_local global i32 0, align 4
@_MASKD_IMASK = common dso_local global i32 0, align 4
@IPACX_MASK = common dso_local global i32 0, align 4
@_MASK_IMASK = common dso_local global i32 0, align 4
@IPACX_CMDRD = common dso_local global i32 0, align 4
@IPACX_CMDRB = common dso_local global i32 0, align 4
@IPACX_CMD_RES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_ipacx(%struct.IsdnCardState* %0, i32 %1) #0 {
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %10 = call i32 @clear_pending_ints(%struct.IsdnCardState* %9)
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %12 = call i32 @bch_init(%struct.IsdnCardState* %11, i32 0)
  %13 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %14 = call i32 @bch_init(%struct.IsdnCardState* %13, i32 1)
  %15 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %16 = call i32 @dch_init(%struct.IsdnCardState* %15)
  br label %17

17:                                               ; preds = %8, %2
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 2
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %71

21:                                               ; preds = %17
  %22 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %23 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %22, i32 0, i32 0
  %24 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %23, align 8
  %25 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %26 = load i32, i32* @IPACX_MASKB, align 4
  %27 = load i32, i32* @_MASKB_IMASK, align 4
  %28 = call i32 %24(%struct.IsdnCardState* %25, i32 0, i32 %26, i32 %27)
  %29 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %30 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %29, i32 0, i32 0
  %31 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %30, align 8
  %32 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %33 = load i32, i32* @IPACX_MASKB, align 4
  %34 = load i32, i32* @_MASKB_IMASK, align 4
  %35 = call i32 %31(%struct.IsdnCardState* %32, i32 1, i32 %33, i32 %34)
  %36 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %37 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %36, i32 0, i32 1
  %38 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %37, align 8
  %39 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %40 = load i32, i32* @IPACX_MASKD, align 4
  %41 = load i32, i32* @_MASKD_IMASK, align 4
  %42 = call i32 %38(%struct.IsdnCardState* %39, i32 %40, i32 %41)
  %43 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %44 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %43, i32 0, i32 1
  %45 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %44, align 8
  %46 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %47 = load i32, i32* @IPACX_MASK, align 4
  %48 = load i32, i32* @_MASK_IMASK, align 4
  %49 = call i32 %45(%struct.IsdnCardState* %46, i32 %47, i32 %48)
  %50 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %51 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %50, i32 0, i32 1
  %52 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %51, align 8
  %53 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %54 = load i32, i32* @IPACX_CMDRD, align 4
  %55 = call i32 %52(%struct.IsdnCardState* %53, i32 %54, i32 65)
  %56 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %57 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %56, i32 0, i32 0
  %58 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %57, align 8
  %59 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %60 = load i32, i32* @IPACX_CMDRB, align 4
  %61 = call i32 %58(%struct.IsdnCardState* %59, i32 0, i32 %60, i32 65)
  %62 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %63 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %62, i32 0, i32 0
  %64 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %63, align 8
  %65 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %66 = load i32, i32* @IPACX_CMDRB, align 4
  %67 = call i32 %64(%struct.IsdnCardState* %65, i32 1, i32 %66, i32 65)
  %68 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %69 = load i32, i32* @IPACX_CMD_RES, align 4
  %70 = call i32 @ph_command(%struct.IsdnCardState* %68, i32 %69)
  br label %71

71:                                               ; preds = %21, %17
  ret void
}

declare dso_local i32 @clear_pending_ints(%struct.IsdnCardState*) #1

declare dso_local i32 @bch_init(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @dch_init(%struct.IsdnCardState*) #1

declare dso_local i32 @ph_command(%struct.IsdnCardState*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
