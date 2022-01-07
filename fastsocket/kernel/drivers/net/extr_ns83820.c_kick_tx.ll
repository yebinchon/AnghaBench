; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ns83820.c_kick_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ns83820.c_kick_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ns83820 = type { i64, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"kick_tx(%p): tx_idx=%d free_idx=%d\0A\00", align 1
@CR_TXE = common dso_local global i32 0, align 4
@CR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ns83820*)* @kick_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kick_tx(%struct.ns83820* %0) #0 {
  %2 = alloca %struct.ns83820*, align 8
  store %struct.ns83820* %0, %struct.ns83820** %2, align 8
  %3 = load %struct.ns83820*, %struct.ns83820** %2, align 8
  %4 = load %struct.ns83820*, %struct.ns83820** %2, align 8
  %5 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.ns83820*, %struct.ns83820** %2, align 8
  %8 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.ns83820* %3, i32 %6, i32 %9)
  %11 = load i32, i32* @CR_TXE, align 4
  %12 = load %struct.ns83820*, %struct.ns83820** %2, align 8
  %13 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 %11, i64 %16)
  ret void
}

declare dso_local i32 @dprintk(i8*, %struct.ns83820*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
