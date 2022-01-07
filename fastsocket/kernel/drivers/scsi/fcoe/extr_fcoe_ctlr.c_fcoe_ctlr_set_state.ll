; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_set_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr = type { i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"state %s -> %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fcoe_ctlr*, i32)* @fcoe_ctlr_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcoe_ctlr_set_state(%struct.fcoe_ctlr* %0, i32 %1) #0 {
  %3 = alloca %struct.fcoe_ctlr*, align 8
  %4 = alloca i32, align 4
  store %struct.fcoe_ctlr* %0, %struct.fcoe_ctlr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %7 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %29

11:                                               ; preds = %2
  %12 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %13 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %18 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %19 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @fcoe_ctlr_state(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @fcoe_ctlr_state(i32 %22)
  %24 = call i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %23)
  br label %25

25:                                               ; preds = %16, %11
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %28 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %25, %10
  ret void
}

declare dso_local i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr*, i8*, i32, i32) #1

declare dso_local i32 @fcoe_ctlr_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
