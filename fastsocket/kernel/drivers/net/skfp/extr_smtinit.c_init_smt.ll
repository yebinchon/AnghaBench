; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_smtinit.c_init_smt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_smtinit.c_init_smt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.s_smc = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32* }

@NUMPHYS = common dso_local global i32 0, align 4
@debug = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_smt(%struct.s_smc* %0, i32* %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %25, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @NUMPHYS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %6
  %11 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %12 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %19 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32* %17, i32** %24, align 8
  br label %25

25:                                               ; preds = %10
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %6

28:                                               ; preds = %6
  %29 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %30 = call i32 @set_oem_spec_val(%struct.s_smc* %29)
  %31 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %32 = call i32 @smt_set_mac_opvalues(%struct.s_smc* %31)
  %33 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @init_fddi_driver(%struct.s_smc* %33, i32* %34)
  %36 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %37 = call i32 @smt_fixup_mib(%struct.s_smc* %36)
  %38 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %39 = call i32 @ev_init(%struct.s_smc* %38)
  %40 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %41 = call i32 @smt_init_evc(%struct.s_smc* %40)
  %42 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %43 = call i32 @smt_timer_init(%struct.s_smc* %42)
  %44 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %45 = call i32 @smt_agent_init(%struct.s_smc* %44)
  %46 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %47 = call i32 @pcm_init(%struct.s_smc* %46)
  %48 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %49 = call i32 @ecm_init(%struct.s_smc* %48)
  %50 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %51 = call i32 @cfm_init(%struct.s_smc* %50)
  %52 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %53 = call i32 @rmt_init(%struct.s_smc* %52)
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %62, %28
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @NUMPHYS, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @pcm(%struct.s_smc* %59, i32 %60, i32 0)
  br label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %54

65:                                               ; preds = %54
  %66 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %67 = call i32 @ecm(%struct.s_smc* %66, i32 0)
  %68 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %69 = call i32 @cfm(%struct.s_smc* %68, i32 0)
  %70 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %71 = call i32 @rmt(%struct.s_smc* %70, i32 0)
  %72 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %73 = call i32 @smt_agent_task(%struct.s_smc* %72)
  %74 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %75 = call i32 @PNMI_INIT(%struct.s_smc* %74)
  ret i32 0
}

declare dso_local i32 @set_oem_spec_val(%struct.s_smc*) #1

declare dso_local i32 @smt_set_mac_opvalues(%struct.s_smc*) #1

declare dso_local i32 @init_fddi_driver(%struct.s_smc*, i32*) #1

declare dso_local i32 @smt_fixup_mib(%struct.s_smc*) #1

declare dso_local i32 @ev_init(%struct.s_smc*) #1

declare dso_local i32 @smt_init_evc(%struct.s_smc*) #1

declare dso_local i32 @smt_timer_init(%struct.s_smc*) #1

declare dso_local i32 @smt_agent_init(%struct.s_smc*) #1

declare dso_local i32 @pcm_init(%struct.s_smc*) #1

declare dso_local i32 @ecm_init(%struct.s_smc*) #1

declare dso_local i32 @cfm_init(%struct.s_smc*) #1

declare dso_local i32 @rmt_init(%struct.s_smc*) #1

declare dso_local i32 @pcm(%struct.s_smc*, i32, i32) #1

declare dso_local i32 @ecm(%struct.s_smc*, i32) #1

declare dso_local i32 @cfm(%struct.s_smc*, i32) #1

declare dso_local i32 @rmt(%struct.s_smc*, i32) #1

declare dso_local i32 @smt_agent_task(%struct.s_smc*) #1

declare dso_local i32 @PNMI_INIT(%struct.s_smc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
