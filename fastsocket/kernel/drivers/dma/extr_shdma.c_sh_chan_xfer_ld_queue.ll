; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_shdma.c_sh_chan_xfer_ld_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_shdma.c_sh_chan_xfer_ld_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_dmae_chan = type { %struct.list_head }
%struct.list_head = type { %struct.list_head* }
%struct.sh_dmae_regs = type { i32 }
%struct.TYPE_2__ = type { i64, %struct.sh_dmae_regs }

@DESC_COMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_dmae_chan*)* @sh_chan_xfer_ld_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_chan_xfer_ld_queue(%struct.sh_dmae_chan* %0) #0 {
  %2 = alloca %struct.sh_dmae_chan*, align 8
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.sh_dmae_regs, align 4
  store %struct.sh_dmae_chan* %0, %struct.sh_dmae_chan** %2, align 8
  %5 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %2, align 8
  %6 = call i64 @dmae_is_idle(%struct.sh_dmae_chan* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %51

9:                                                ; preds = %1
  %10 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %2, align 8
  %11 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i32 0, i32 0
  %13 = load %struct.list_head*, %struct.list_head** %12, align 8
  store %struct.list_head* %13, %struct.list_head** %3, align 8
  br label %14

14:                                               ; preds = %30, %9
  %15 = load %struct.list_head*, %struct.list_head** %3, align 8
  %16 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %2, align 8
  %17 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %16, i32 0, i32 0
  %18 = icmp ne %struct.list_head* %15, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.list_head*, %struct.list_head** %3, align 8
  %21 = call %struct.TYPE_2__* @to_sh_desc(%struct.list_head* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DESC_COMP, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %19, %14
  %27 = phi i1 [ false, %14 ], [ %25, %19 ]
  br i1 %27, label %28, label %34

28:                                               ; preds = %26
  %29 = call i32 (...) @cpu_relax()
  br label %30

30:                                               ; preds = %28
  %31 = load %struct.list_head*, %struct.list_head** %3, align 8
  %32 = getelementptr inbounds %struct.list_head, %struct.list_head* %31, i32 0, i32 0
  %33 = load %struct.list_head*, %struct.list_head** %32, align 8
  store %struct.list_head* %33, %struct.list_head** %3, align 8
  br label %14

34:                                               ; preds = %26
  %35 = load %struct.list_head*, %struct.list_head** %3, align 8
  %36 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %2, align 8
  %37 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %36, i32 0, i32 0
  %38 = icmp ne %struct.list_head* %35, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load %struct.list_head*, %struct.list_head** %3, align 8
  %41 = call %struct.TYPE_2__* @to_sh_desc(%struct.list_head* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = bitcast %struct.sh_dmae_regs* %4 to i8*
  %44 = bitcast %struct.sh_dmae_regs* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 8 %44, i64 4, i1 false)
  %45 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %2, align 8
  %46 = getelementptr inbounds %struct.sh_dmae_regs, %struct.sh_dmae_regs* %4, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dmae_set_reg(%struct.sh_dmae_chan* %45, i32 %47)
  %49 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %2, align 8
  %50 = call i32 @dmae_start(%struct.sh_dmae_chan* %49)
  br label %51

51:                                               ; preds = %8, %39, %34
  ret void
}

declare dso_local i64 @dmae_is_idle(%struct.sh_dmae_chan*) #1

declare dso_local %struct.TYPE_2__* @to_sh_desc(%struct.list_head*) #1

declare dso_local i32 @cpu_relax(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dmae_set_reg(%struct.sh_dmae_chan*, i32) #1

declare dso_local i32 @dmae_start(%struct.sh_dmae_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
