; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcxp_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcxp_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcxp_s = type { i32, i64, i32, %struct.bfa_fcxp_mod_s* }
%struct.bfa_fcxp_mod_s = type { i32, i32, i32, i32, i32, i32 }
%struct.bfa_fcxp_wqe_s = type { i32, i32 (i32, %struct.bfa_fcxp_s.0*)*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_fcxp_s.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcxp_s*)* @bfa_fcxp_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcxp_put(%struct.bfa_fcxp_s* %0) #0 {
  %2 = alloca %struct.bfa_fcxp_s*, align 8
  %3 = alloca %struct.bfa_fcxp_mod_s*, align 8
  %4 = alloca %struct.bfa_fcxp_wqe_s*, align 8
  store %struct.bfa_fcxp_s* %0, %struct.bfa_fcxp_s** %2, align 8
  %5 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %2, align 8
  %6 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %5, i32 0, i32 3
  %7 = load %struct.bfa_fcxp_mod_s*, %struct.bfa_fcxp_mod_s** %6, align 8
  store %struct.bfa_fcxp_mod_s* %7, %struct.bfa_fcxp_mod_s** %3, align 8
  %8 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %2, align 8
  %9 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.bfa_fcxp_mod_s*, %struct.bfa_fcxp_mod_s** %3, align 8
  %14 = getelementptr inbounds %struct.bfa_fcxp_mod_s, %struct.bfa_fcxp_mod_s* %13, i32 0, i32 5
  %15 = call i32 @bfa_q_deq(i32* %14, %struct.bfa_fcxp_wqe_s** %4)
  br label %20

16:                                               ; preds = %1
  %17 = load %struct.bfa_fcxp_mod_s*, %struct.bfa_fcxp_mod_s** %3, align 8
  %18 = getelementptr inbounds %struct.bfa_fcxp_mod_s, %struct.bfa_fcxp_mod_s* %17, i32 0, i32 4
  %19 = call i32 @bfa_q_deq(i32* %18, %struct.bfa_fcxp_wqe_s** %4)
  br label %20

20:                                               ; preds = %16, %12
  %21 = load %struct.bfa_fcxp_wqe_s*, %struct.bfa_fcxp_wqe_s** %4, align 8
  %22 = icmp ne %struct.bfa_fcxp_wqe_s* %21, null
  br i1 %22, label %23, label %66

23:                                               ; preds = %20
  %24 = load %struct.bfa_fcxp_mod_s*, %struct.bfa_fcxp_mod_s** %3, align 8
  %25 = getelementptr inbounds %struct.bfa_fcxp_mod_s, %struct.bfa_fcxp_mod_s* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %2, align 8
  %28 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @bfa_trc(i32 %26, i32 %29)
  %31 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %2, align 8
  %32 = load %struct.bfa_fcxp_wqe_s*, %struct.bfa_fcxp_wqe_s** %4, align 8
  %33 = getelementptr inbounds %struct.bfa_fcxp_wqe_s, %struct.bfa_fcxp_wqe_s* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bfa_fcxp_wqe_s*, %struct.bfa_fcxp_wqe_s** %4, align 8
  %36 = getelementptr inbounds %struct.bfa_fcxp_wqe_s, %struct.bfa_fcxp_wqe_s* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.bfa_fcxp_wqe_s*, %struct.bfa_fcxp_wqe_s** %4, align 8
  %39 = getelementptr inbounds %struct.bfa_fcxp_wqe_s, %struct.bfa_fcxp_wqe_s* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.bfa_fcxp_wqe_s*, %struct.bfa_fcxp_wqe_s** %4, align 8
  %42 = getelementptr inbounds %struct.bfa_fcxp_wqe_s, %struct.bfa_fcxp_wqe_s* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.bfa_fcxp_wqe_s*, %struct.bfa_fcxp_wqe_s** %4, align 8
  %45 = getelementptr inbounds %struct.bfa_fcxp_wqe_s, %struct.bfa_fcxp_wqe_s* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bfa_fcxp_wqe_s*, %struct.bfa_fcxp_wqe_s** %4, align 8
  %48 = getelementptr inbounds %struct.bfa_fcxp_wqe_s, %struct.bfa_fcxp_wqe_s* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.bfa_fcxp_wqe_s*, %struct.bfa_fcxp_wqe_s** %4, align 8
  %51 = getelementptr inbounds %struct.bfa_fcxp_wqe_s, %struct.bfa_fcxp_wqe_s* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.bfa_fcxp_wqe_s*, %struct.bfa_fcxp_wqe_s** %4, align 8
  %54 = getelementptr inbounds %struct.bfa_fcxp_wqe_s, %struct.bfa_fcxp_wqe_s* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @bfa_fcxp_init(%struct.bfa_fcxp_s* %31, i32 %34, i32 %37, i32 %40, i32 %43, i32 %46, i32 %49, i32 %52, i32 %55)
  %57 = load %struct.bfa_fcxp_wqe_s*, %struct.bfa_fcxp_wqe_s** %4, align 8
  %58 = getelementptr inbounds %struct.bfa_fcxp_wqe_s, %struct.bfa_fcxp_wqe_s* %57, i32 0, i32 1
  %59 = load i32 (i32, %struct.bfa_fcxp_s.0*)*, i32 (i32, %struct.bfa_fcxp_s.0*)** %58, align 8
  %60 = load %struct.bfa_fcxp_wqe_s*, %struct.bfa_fcxp_wqe_s** %4, align 8
  %61 = getelementptr inbounds %struct.bfa_fcxp_wqe_s, %struct.bfa_fcxp_wqe_s* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %2, align 8
  %64 = bitcast %struct.bfa_fcxp_s* %63 to %struct.bfa_fcxp_s.0*
  %65 = call i32 %59(i32 %62, %struct.bfa_fcxp_s.0* %64)
  br label %94

66:                                               ; preds = %20
  %67 = load %struct.bfa_fcxp_mod_s*, %struct.bfa_fcxp_mod_s** %3, align 8
  %68 = getelementptr inbounds %struct.bfa_fcxp_mod_s, %struct.bfa_fcxp_mod_s* %67, i32 0, i32 2
  %69 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %2, align 8
  %70 = call i32 @bfa_q_is_on_q(i32* %68, %struct.bfa_fcxp_s* %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @WARN_ON(i32 %73)
  %75 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %2, align 8
  %76 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %75, i32 0, i32 0
  %77 = call i32 @list_del(i32* %76)
  %78 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %2, align 8
  %79 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %66
  %83 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %2, align 8
  %84 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %83, i32 0, i32 0
  %85 = load %struct.bfa_fcxp_mod_s*, %struct.bfa_fcxp_mod_s** %3, align 8
  %86 = getelementptr inbounds %struct.bfa_fcxp_mod_s, %struct.bfa_fcxp_mod_s* %85, i32 0, i32 1
  %87 = call i32 @list_add_tail(i32* %84, i32* %86)
  br label %94

88:                                               ; preds = %66
  %89 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %2, align 8
  %90 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %89, i32 0, i32 0
  %91 = load %struct.bfa_fcxp_mod_s*, %struct.bfa_fcxp_mod_s** %3, align 8
  %92 = getelementptr inbounds %struct.bfa_fcxp_mod_s, %struct.bfa_fcxp_mod_s* %91, i32 0, i32 0
  %93 = call i32 @list_add_tail(i32* %90, i32* %92)
  br label %94

94:                                               ; preds = %23, %88, %82
  ret void
}

declare dso_local i32 @bfa_q_deq(i32*, %struct.bfa_fcxp_wqe_s**) #1

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_fcxp_init(%struct.bfa_fcxp_s*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_q_is_on_q(i32*, %struct.bfa_fcxp_s*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
