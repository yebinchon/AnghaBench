; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fcoe_ctlr*)* @fcoe_ctlr_vn_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcoe_ctlr_vn_start(%struct.fcoe_ctlr* %0) #0 {
  %2 = alloca %struct.fcoe_ctlr*, align 8
  store %struct.fcoe_ctlr* %0, %struct.fcoe_ctlr** %2, align 8
  %3 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %4 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %3, i32 0, i32 2
  store i64 0, i64* %4, align 8
  %5 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %6 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %5, i32 0, i32 1
  %7 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %8 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @prandom32_seed(i32* %6, i32 %11)
  %13 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %2, align 8
  %14 = call i32 @fcoe_ctlr_vn_restart(%struct.fcoe_ctlr* %13)
  ret void
}

declare dso_local i32 @prandom32_seed(i32*, i32) #1

declare dso_local i32 @fcoe_ctlr_vn_restart(%struct.fcoe_ctlr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
