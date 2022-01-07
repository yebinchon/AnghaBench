; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_fcp_res_recfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_fcp_res_recfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfa_fcp_mod_s = type { i32, i32, i64, i32, i32 }
%struct.list_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcp_res_recfg(%struct.bfa_s* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bfa_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfa_fcp_mod_s*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i32, align 4
  store %struct.bfa_s* %0, %struct.bfa_s** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.bfa_s*, %struct.bfa_s** %4, align 8
  %11 = call %struct.bfa_fcp_mod_s* @BFA_FCP_MOD(%struct.bfa_s* %10)
  store %struct.bfa_fcp_mod_s* %11, %struct.bfa_fcp_mod_s** %7, align 8
  %12 = load %struct.bfa_fcp_mod_s*, %struct.bfa_fcp_mod_s** %7, align 8
  %13 = getelementptr inbounds %struct.bfa_fcp_mod_s, %struct.bfa_fcp_mod_s* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %61

17:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %34, %17
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.bfa_fcp_mod_s*, %struct.bfa_fcp_mod_s** %7, align 8
  %21 = getelementptr inbounds %struct.bfa_fcp_mod_s, %struct.bfa_fcp_mod_s* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sub nsw i32 %22, %23
  %25 = icmp slt i32 %19, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %18
  %27 = load %struct.bfa_fcp_mod_s*, %struct.bfa_fcp_mod_s** %7, align 8
  %28 = getelementptr inbounds %struct.bfa_fcp_mod_s, %struct.bfa_fcp_mod_s* %27, i32 0, i32 4
  %29 = call i32 @bfa_q_deq_tail(i32* %28, %struct.list_head** %8)
  %30 = load %struct.list_head*, %struct.list_head** %8, align 8
  %31 = load %struct.bfa_fcp_mod_s*, %struct.bfa_fcp_mod_s** %7, align 8
  %32 = getelementptr inbounds %struct.bfa_fcp_mod_s, %struct.bfa_fcp_mod_s* %31, i32 0, i32 3
  %33 = call i32 @list_add_tail(%struct.list_head* %30, i32* %32)
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %18

37:                                               ; preds = %18
  %38 = load %struct.bfa_fcp_mod_s*, %struct.bfa_fcp_mod_s** %7, align 8
  %39 = getelementptr inbounds %struct.bfa_fcp_mod_s, %struct.bfa_fcp_mod_s* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.bfa_s*, %struct.bfa_s** %4, align 8
  %45 = load %struct.bfa_fcp_mod_s*, %struct.bfa_fcp_mod_s** %7, align 8
  %46 = getelementptr inbounds %struct.bfa_fcp_mod_s, %struct.bfa_fcp_mod_s* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @bfa_trc(%struct.bfa_s* %44, i32 %47)
  %49 = load %struct.bfa_s*, %struct.bfa_s** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @bfa_trc(%struct.bfa_s* %49, i32 %50)
  br label %52

52:                                               ; preds = %43, %37
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.bfa_fcp_mod_s*, %struct.bfa_fcp_mod_s** %7, align 8
  %55 = getelementptr inbounds %struct.bfa_fcp_mod_s, %struct.bfa_fcp_mod_s* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.bfa_fcp_mod_s*, %struct.bfa_fcp_mod_s** %7, align 8
  %58 = getelementptr inbounds %struct.bfa_fcp_mod_s, %struct.bfa_fcp_mod_s* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.bfa_fcp_mod_s*, %struct.bfa_fcp_mod_s** %7, align 8
  %60 = getelementptr inbounds %struct.bfa_fcp_mod_s, %struct.bfa_fcp_mod_s* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %52, %16
  ret void
}

declare dso_local %struct.bfa_fcp_mod_s* @BFA_FCP_MOD(%struct.bfa_s*) #1

declare dso_local i32 @bfa_q_deq_tail(i32*, %struct.list_head**) #1

declare dso_local i32 @list_add_tail(%struct.list_head*, i32*) #1

declare dso_local i32 @bfa_trc(%struct.bfa_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
