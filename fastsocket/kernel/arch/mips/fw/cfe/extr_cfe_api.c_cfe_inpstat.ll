; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/fw/cfe/extr_cfe_api.c_cfe_inpstat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/fw/cfe/extr_cfe_api.c_cfe_inpstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfe_xiocb = type { i64, i32, i32, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CFE_CMD_DEV_INPSTAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfe_inpstat(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfe_xiocb, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @CFE_CMD_DEV_INPSTAT, align 4
  %6 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %4, i32 0, i32 5
  store i32 %5, i32* %6, align 8
  %7 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %4, i32 0, i32 0
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* %3, align 4
  %9 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %4, i32 0, i32 1
  store i32 %8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %4, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %4, i32 0, i32 2
  store i32 4, i32* %11, align 4
  %12 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %4, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = call i32 @cfe_iocb_dispatch(%struct.cfe_xiocb* %4)
  %16 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %4, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %4, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %2, align 4
  br label %28

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.cfe_xiocb, %struct.cfe_xiocb* %4, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %23, %19
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @cfe_iocb_dispatch(%struct.cfe_xiocb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
