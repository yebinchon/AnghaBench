; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_lps_login_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_lps_login_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfi_lps_login_rsp_s = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_lps_mod_s = type { i64, i32 }
%struct.bfa_lps_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BFA_LPS_SM_FWRSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_s*, %struct.bfi_lps_login_rsp_s*)* @bfa_lps_login_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_lps_login_rsp(%struct.bfa_s* %0, %struct.bfi_lps_login_rsp_s* %1) #0 {
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca %struct.bfi_lps_login_rsp_s*, align 8
  %5 = alloca %struct.bfa_lps_mod_s*, align 8
  %6 = alloca %struct.bfa_lps_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  store %struct.bfi_lps_login_rsp_s* %1, %struct.bfi_lps_login_rsp_s** %4, align 8
  %7 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %8 = call %struct.bfa_lps_mod_s* @BFA_LPS_MOD(%struct.bfa_s* %7)
  store %struct.bfa_lps_mod_s* %8, %struct.bfa_lps_mod_s** %5, align 8
  %9 = load %struct.bfi_lps_login_rsp_s*, %struct.bfi_lps_login_rsp_s** %4, align 8
  %10 = getelementptr inbounds %struct.bfi_lps_login_rsp_s, %struct.bfi_lps_login_rsp_s* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.bfa_lps_mod_s*, %struct.bfa_lps_mod_s** %5, align 8
  %13 = getelementptr inbounds %struct.bfa_lps_mod_s, %struct.bfa_lps_mod_s* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %11, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load %struct.bfa_lps_mod_s*, %struct.bfa_lps_mod_s** %5, align 8
  %19 = load %struct.bfi_lps_login_rsp_s*, %struct.bfi_lps_login_rsp_s** %4, align 8
  %20 = getelementptr inbounds %struct.bfi_lps_login_rsp_s, %struct.bfi_lps_login_rsp_s* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call %struct.bfa_lps_s* @BFA_LPS_FROM_TAG(%struct.bfa_lps_mod_s* %18, i64 %21)
  store %struct.bfa_lps_s* %22, %struct.bfa_lps_s** %6, align 8
  %23 = load %struct.bfi_lps_login_rsp_s*, %struct.bfi_lps_login_rsp_s** %4, align 8
  %24 = getelementptr inbounds %struct.bfi_lps_login_rsp_s, %struct.bfi_lps_login_rsp_s* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %6, align 8
  %27 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.bfi_lps_login_rsp_s*, %struct.bfi_lps_login_rsp_s** %4, align 8
  %29 = getelementptr inbounds %struct.bfi_lps_login_rsp_s, %struct.bfi_lps_login_rsp_s* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %123 [
    i32 129, label %31
    i32 130, label %94
    i32 131, label %105
    i32 128, label %111
  ]

31:                                               ; preds = %2
  %32 = load %struct.bfi_lps_login_rsp_s*, %struct.bfi_lps_login_rsp_s** %4, align 8
  %33 = getelementptr inbounds %struct.bfi_lps_login_rsp_s, %struct.bfi_lps_login_rsp_s* %32, i32 0, i32 15
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %6, align 8
  %36 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %35, i32 0, i32 15
  store i32 %34, i32* %36, align 4
  %37 = load %struct.bfi_lps_login_rsp_s*, %struct.bfi_lps_login_rsp_s** %4, align 8
  %38 = getelementptr inbounds %struct.bfi_lps_login_rsp_s, %struct.bfi_lps_login_rsp_s* %37, i32 0, i32 14
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %6, align 8
  %41 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %40, i32 0, i32 14
  store i32 %39, i32* %41, align 4
  %42 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %6, align 8
  %43 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %42, i32 0, i32 14
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %31
  %47 = load %struct.bfi_lps_login_rsp_s*, %struct.bfi_lps_login_rsp_s** %4, align 8
  %48 = getelementptr inbounds %struct.bfi_lps_login_rsp_s, %struct.bfi_lps_login_rsp_s* %47, i32 0, i32 13
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %6, align 8
  %51 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %50, i32 0, i32 13
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %46, %31
  %53 = load %struct.bfi_lps_login_rsp_s*, %struct.bfi_lps_login_rsp_s** %4, align 8
  %54 = getelementptr inbounds %struct.bfi_lps_login_rsp_s, %struct.bfi_lps_login_rsp_s* %53, i32 0, i32 12
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %6, align 8
  %57 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %56, i32 0, i32 12
  store i32 %55, i32* %57, align 4
  %58 = load %struct.bfi_lps_login_rsp_s*, %struct.bfi_lps_login_rsp_s** %4, align 8
  %59 = getelementptr inbounds %struct.bfi_lps_login_rsp_s, %struct.bfi_lps_login_rsp_s* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @be16_to_cpu(i32 %60)
  %62 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %6, align 8
  %63 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %62, i32 0, i32 11
  store i32 %61, i32* %63, align 4
  %64 = load %struct.bfi_lps_login_rsp_s*, %struct.bfi_lps_login_rsp_s** %4, align 8
  %65 = getelementptr inbounds %struct.bfi_lps_login_rsp_s, %struct.bfi_lps_login_rsp_s* %64, i32 0, i32 10
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %6, align 8
  %68 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %67, i32 0, i32 10
  store i32 %66, i32* %68, align 4
  %69 = load %struct.bfi_lps_login_rsp_s*, %struct.bfi_lps_login_rsp_s** %4, align 8
  %70 = getelementptr inbounds %struct.bfi_lps_login_rsp_s, %struct.bfi_lps_login_rsp_s* %69, i32 0, i32 9
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %6, align 8
  %73 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %72, i32 0, i32 9
  store i32 %71, i32* %73, align 4
  %74 = load %struct.bfi_lps_login_rsp_s*, %struct.bfi_lps_login_rsp_s** %4, align 8
  %75 = getelementptr inbounds %struct.bfi_lps_login_rsp_s, %struct.bfi_lps_login_rsp_s* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %6, align 8
  %78 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %77, i32 0, i32 8
  store i32 %76, i32* %78, align 4
  %79 = load %struct.bfi_lps_login_rsp_s*, %struct.bfi_lps_login_rsp_s** %4, align 8
  %80 = getelementptr inbounds %struct.bfi_lps_login_rsp_s, %struct.bfi_lps_login_rsp_s* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %6, align 8
  %83 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 4
  %84 = load %struct.bfi_lps_login_rsp_s*, %struct.bfi_lps_login_rsp_s** %4, align 8
  %85 = getelementptr inbounds %struct.bfi_lps_login_rsp_s, %struct.bfi_lps_login_rsp_s* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %6, align 8
  %88 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %87, i32 0, i32 6
  store i32 %86, i32* %88, align 4
  %89 = load %struct.bfi_lps_login_rsp_s*, %struct.bfi_lps_login_rsp_s** %4, align 8
  %90 = getelementptr inbounds %struct.bfi_lps_login_rsp_s, %struct.bfi_lps_login_rsp_s* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %6, align 8
  %93 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 4
  br label %124

94:                                               ; preds = %2
  %95 = load %struct.bfi_lps_login_rsp_s*, %struct.bfi_lps_login_rsp_s** %4, align 8
  %96 = getelementptr inbounds %struct.bfi_lps_login_rsp_s, %struct.bfi_lps_login_rsp_s* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %6, align 8
  %99 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 4
  %100 = load %struct.bfi_lps_login_rsp_s*, %struct.bfi_lps_login_rsp_s** %4, align 8
  %101 = getelementptr inbounds %struct.bfi_lps_login_rsp_s, %struct.bfi_lps_login_rsp_s* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %6, align 8
  %104 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  br label %124

105:                                              ; preds = %2
  %106 = load %struct.bfi_lps_login_rsp_s*, %struct.bfi_lps_login_rsp_s** %4, align 8
  %107 = getelementptr inbounds %struct.bfi_lps_login_rsp_s, %struct.bfi_lps_login_rsp_s* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %6, align 8
  %110 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  br label %124

111:                                              ; preds = %2
  %112 = load %struct.bfi_lps_login_rsp_s*, %struct.bfi_lps_login_rsp_s** %4, align 8
  %113 = getelementptr inbounds %struct.bfi_lps_login_rsp_s, %struct.bfi_lps_login_rsp_s* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %6, align 8
  %118 = load %struct.bfi_lps_login_rsp_s*, %struct.bfi_lps_login_rsp_s** %4, align 8
  %119 = getelementptr inbounds %struct.bfi_lps_login_rsp_s, %struct.bfi_lps_login_rsp_s* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @bfa_lps_no_res(%struct.bfa_lps_s* %117, i32 %120)
  br label %122

122:                                              ; preds = %116, %111
  br label %124

123:                                              ; preds = %2
  br label %124

124:                                              ; preds = %123, %122, %105, %94, %52
  %125 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %6, align 8
  %126 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %125, i32 0, i32 1
  %127 = call i32 @list_del(i32* %126)
  %128 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %6, align 8
  %129 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %128, i32 0, i32 1
  %130 = load %struct.bfa_lps_mod_s*, %struct.bfa_lps_mod_s** %5, align 8
  %131 = getelementptr inbounds %struct.bfa_lps_mod_s, %struct.bfa_lps_mod_s* %130, i32 0, i32 1
  %132 = call i32 @list_add_tail(i32* %129, i32* %131)
  %133 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %6, align 8
  %134 = load i32, i32* @BFA_LPS_SM_FWRSP, align 4
  %135 = call i32 @bfa_sm_send_event(%struct.bfa_lps_s* %133, i32 %134)
  ret void
}

declare dso_local %struct.bfa_lps_mod_s* @BFA_LPS_MOD(%struct.bfa_s*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.bfa_lps_s* @BFA_LPS_FROM_TAG(%struct.bfa_lps_mod_s*, i64) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @bfa_lps_no_res(%struct.bfa_lps_s*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_lps_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
