; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_isr_rdma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_isr_rdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, i32 }

@RDCSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s isr_rdma status=%08x\0A\00", align 1
@BIT5 = common dso_local global i32 0, align 4
@BIT4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%s isr_rdma rx_restart=1\0A\00", align 1
@BH_RECEIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*)* @isr_rdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isr_rdma(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca i32, align 4
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  %4 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %5 = load i32, i32* @RDCSR, align 4
  %6 = call i32 @rd_reg32(%struct.slgt_info* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %8 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  %13 = call i32 @DBGISR(i8* %12)
  %14 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %15 = load i32, i32* @RDCSR, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @wr_reg32(%struct.slgt_info* %14, i32 %15, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @BIT5, align 4
  %20 = load i32, i32* @BIT4, align 4
  %21 = add i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %1
  %25 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %26 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @DBGISR(i8* %29)
  %31 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %32 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %24, %1
  %34 = load i32, i32* @BH_RECEIVE, align 4
  %35 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %36 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  ret void
}

declare dso_local i32 @rd_reg32(%struct.slgt_info*, i32) #1

declare dso_local i32 @DBGISR(i8*) #1

declare dso_local i32 @wr_reg32(%struct.slgt_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
