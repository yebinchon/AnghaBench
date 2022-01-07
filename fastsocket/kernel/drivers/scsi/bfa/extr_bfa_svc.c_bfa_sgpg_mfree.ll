; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_sgpg_mfree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_sgpg_mfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.list_head = type { i32 }
%struct.bfa_sgpg_mod_s = type { i32, i32, i32, i32 }
%struct.bfa_sgpg_wqe_s = type { i32, i32, i32 (i32)*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_sgpg_mfree(%struct.bfa_s* %0, %struct.list_head* %1, i32 %2) #0 {
  %4 = alloca %struct.bfa_s*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfa_sgpg_mod_s*, align 8
  %8 = alloca %struct.bfa_sgpg_wqe_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.bfa_s*, %struct.bfa_s** %4, align 8
  %10 = call %struct.bfa_sgpg_mod_s* @BFA_SGPG_MOD(%struct.bfa_s* %9)
  store %struct.bfa_sgpg_mod_s* %10, %struct.bfa_sgpg_mod_s** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.bfa_sgpg_mod_s*, %struct.bfa_sgpg_mod_s** %7, align 8
  %13 = getelementptr inbounds %struct.bfa_sgpg_mod_s, %struct.bfa_sgpg_mod_s* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.bfa_sgpg_mod_s*, %struct.bfa_sgpg_mod_s** %7, align 8
  %17 = getelementptr inbounds %struct.bfa_sgpg_mod_s, %struct.bfa_sgpg_mod_s* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bfa_sgpg_mod_s*, %struct.bfa_sgpg_mod_s** %7, align 8
  %20 = getelementptr inbounds %struct.bfa_sgpg_mod_s, %struct.bfa_sgpg_mod_s* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.list_head*, %struct.list_head** %5, align 8
  %26 = load %struct.bfa_sgpg_mod_s*, %struct.bfa_sgpg_mod_s** %7, align 8
  %27 = getelementptr inbounds %struct.bfa_sgpg_mod_s, %struct.bfa_sgpg_mod_s* %26, i32 0, i32 3
  %28 = call i32 @list_splice_tail_init(%struct.list_head* %25, i32* %27)
  %29 = load %struct.bfa_sgpg_mod_s*, %struct.bfa_sgpg_mod_s** %7, align 8
  %30 = getelementptr inbounds %struct.bfa_sgpg_mod_s, %struct.bfa_sgpg_mod_s* %29, i32 0, i32 2
  %31 = call i64 @list_empty(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %94

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %92, %34
  %36 = load %struct.bfa_sgpg_mod_s*, %struct.bfa_sgpg_mod_s** %7, align 8
  %37 = getelementptr inbounds %struct.bfa_sgpg_mod_s, %struct.bfa_sgpg_mod_s* %36, i32 0, i32 2
  %38 = call %struct.bfa_sgpg_wqe_s* @bfa_q_first(i32* %37)
  store %struct.bfa_sgpg_wqe_s* %38, %struct.bfa_sgpg_wqe_s** %8, align 8
  %39 = load %struct.bfa_sgpg_mod_s*, %struct.bfa_sgpg_mod_s** %7, align 8
  %40 = getelementptr inbounds %struct.bfa_sgpg_mod_s, %struct.bfa_sgpg_mod_s* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bfa_sgpg_wqe_s*, %struct.bfa_sgpg_wqe_s** %8, align 8
  %43 = getelementptr inbounds %struct.bfa_sgpg_wqe_s, %struct.bfa_sgpg_wqe_s* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load %struct.bfa_sgpg_mod_s*, %struct.bfa_sgpg_mod_s** %7, align 8
  %48 = getelementptr inbounds %struct.bfa_sgpg_mod_s, %struct.bfa_sgpg_mod_s* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %6, align 4
  br label %54

50:                                               ; preds = %35
  %51 = load %struct.bfa_sgpg_wqe_s*, %struct.bfa_sgpg_wqe_s** %8, align 8
  %52 = getelementptr inbounds %struct.bfa_sgpg_wqe_s, %struct.bfa_sgpg_wqe_s* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load %struct.bfa_s*, %struct.bfa_s** %4, align 8
  %56 = load %struct.bfa_sgpg_wqe_s*, %struct.bfa_sgpg_wqe_s** %8, align 8
  %57 = getelementptr inbounds %struct.bfa_sgpg_wqe_s, %struct.bfa_sgpg_wqe_s* %56, i32 0, i32 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @bfa_sgpg_malloc(%struct.bfa_s* %55, i32* %57, i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.bfa_sgpg_wqe_s*, %struct.bfa_sgpg_wqe_s** %8, align 8
  %62 = getelementptr inbounds %struct.bfa_sgpg_wqe_s, %struct.bfa_sgpg_wqe_s* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.bfa_sgpg_wqe_s*, %struct.bfa_sgpg_wqe_s** %8, align 8
  %66 = getelementptr inbounds %struct.bfa_sgpg_wqe_s, %struct.bfa_sgpg_wqe_s* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %54
  %70 = load %struct.bfa_sgpg_wqe_s*, %struct.bfa_sgpg_wqe_s** %8, align 8
  %71 = getelementptr inbounds %struct.bfa_sgpg_wqe_s, %struct.bfa_sgpg_wqe_s* %70, i32 0, i32 3
  %72 = call i32 @list_del(i32* %71)
  %73 = load %struct.bfa_sgpg_wqe_s*, %struct.bfa_sgpg_wqe_s** %8, align 8
  %74 = getelementptr inbounds %struct.bfa_sgpg_wqe_s, %struct.bfa_sgpg_wqe_s* %73, i32 0, i32 2
  %75 = load i32 (i32)*, i32 (i32)** %74, align 8
  %76 = load %struct.bfa_sgpg_wqe_s*, %struct.bfa_sgpg_wqe_s** %8, align 8
  %77 = getelementptr inbounds %struct.bfa_sgpg_wqe_s, %struct.bfa_sgpg_wqe_s* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 %75(i32 %78)
  br label %80

80:                                               ; preds = %69, %54
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.bfa_sgpg_mod_s*, %struct.bfa_sgpg_mod_s** %7, align 8
  %83 = getelementptr inbounds %struct.bfa_sgpg_mod_s, %struct.bfa_sgpg_mod_s* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.bfa_sgpg_mod_s*, %struct.bfa_sgpg_mod_s** %7, align 8
  %88 = getelementptr inbounds %struct.bfa_sgpg_mod_s, %struct.bfa_sgpg_mod_s* %87, i32 0, i32 2
  %89 = call i64 @list_empty(i32* %88)
  %90 = icmp ne i64 %89, 0
  %91 = xor i1 %90, true
  br label %92

92:                                               ; preds = %86, %81
  %93 = phi i1 [ false, %81 ], [ %91, %86 ]
  br i1 %93, label %35, label %94

94:                                               ; preds = %33, %92
  ret void
}

declare dso_local %struct.bfa_sgpg_mod_s* @BFA_SGPG_MOD(%struct.bfa_s*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_splice_tail_init(%struct.list_head*, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.bfa_sgpg_wqe_s* @bfa_q_first(i32*) #1

declare dso_local i32 @bfa_sgpg_malloc(%struct.bfa_s*, i32*, i32) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
