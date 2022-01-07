; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_ddp_unmark_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_ddp_unmark_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_ddp_info = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_ddp_info*, i32, i32)* @ddp_unmark_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddp_unmark_entries(%struct.cxgbi_ddp_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cxgbi_ddp_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cxgbi_ddp_info* %0, %struct.cxgbi_ddp_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %4, align 8
  %8 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %4, align 8
  %11 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @memset(i32* %15, i32 0, i32 %19)
  %21 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %4, align 8
  %22 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
