; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_wbsd.c_wbsd_reset_ignore.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_wbsd.c_wbsd_reset_ignore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsd_host = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Resetting card detection ignore\0A\00", align 1
@WBSD_FIGNORE_DETECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @wbsd_reset_ignore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbsd_reset_ignore(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.wbsd_host*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.wbsd_host*
  store %struct.wbsd_host* %5, %struct.wbsd_host** %3, align 8
  %6 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %7 = icmp eq %struct.wbsd_host* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = call i32 @DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %12 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load i32, i32* @WBSD_FIGNORE_DETECT, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %17 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %21 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %20, i32 0, i32 1
  %22 = call i32 @tasklet_schedule(i32* %21)
  %23 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %24 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock_bh(i32* %24)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
