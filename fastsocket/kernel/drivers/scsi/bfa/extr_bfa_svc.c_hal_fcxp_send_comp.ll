; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_hal_fcxp_send_comp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_hal_fcxp_send_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfi_fcxp_send_rsp_s = type { i64, i32, i8*, i8*, i32 }
%struct.bfa_fcxp_mod_s = type { %struct.bfa_s* }
%struct.bfa_fcxp_s = type { i64, i32 (i32*, %struct.bfa_fcxp_s*, i32, i64, i8*, i8*, i32*)*, i32, i32, i8*, i8*, i32, i32* }

@BFA_STATUS_OK = common dso_local global i64 0, align 8
@__bfa_fcxp_send_cbfn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_s*, %struct.bfi_fcxp_send_rsp_s*)* @hal_fcxp_send_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hal_fcxp_send_comp(%struct.bfa_s* %0, %struct.bfi_fcxp_send_rsp_s* %1) #0 {
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca %struct.bfi_fcxp_send_rsp_s*, align 8
  %5 = alloca %struct.bfa_fcxp_mod_s*, align 8
  %6 = alloca %struct.bfa_fcxp_s*, align 8
  %7 = alloca i32, align 4
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  store %struct.bfi_fcxp_send_rsp_s* %1, %struct.bfi_fcxp_send_rsp_s** %4, align 8
  %8 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %9 = call %struct.bfa_fcxp_mod_s* @BFA_FCXP_MOD(%struct.bfa_s* %8)
  store %struct.bfa_fcxp_mod_s* %9, %struct.bfa_fcxp_mod_s** %5, align 8
  %10 = load %struct.bfi_fcxp_send_rsp_s*, %struct.bfi_fcxp_send_rsp_s** %4, align 8
  %11 = getelementptr inbounds %struct.bfi_fcxp_send_rsp_s, %struct.bfi_fcxp_send_rsp_s* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @be16_to_cpu(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @bfa_trc(%struct.bfa_s* %14, i32 %15)
  %17 = load %struct.bfi_fcxp_send_rsp_s*, %struct.bfi_fcxp_send_rsp_s** %4, align 8
  %18 = getelementptr inbounds %struct.bfi_fcxp_send_rsp_s, %struct.bfi_fcxp_send_rsp_s* %17, i32 0, i32 3
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @be32_to_cpu(i8* %19)
  %21 = load %struct.bfi_fcxp_send_rsp_s*, %struct.bfi_fcxp_send_rsp_s** %4, align 8
  %22 = getelementptr inbounds %struct.bfi_fcxp_send_rsp_s, %struct.bfi_fcxp_send_rsp_s* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load %struct.bfi_fcxp_send_rsp_s*, %struct.bfi_fcxp_send_rsp_s** %4, align 8
  %24 = getelementptr inbounds %struct.bfi_fcxp_send_rsp_s, %struct.bfi_fcxp_send_rsp_s* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BFA_STATUS_OK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.bfi_fcxp_send_rsp_s*, %struct.bfi_fcxp_send_rsp_s** %4, align 8
  %30 = getelementptr inbounds %struct.bfi_fcxp_send_rsp_s, %struct.bfi_fcxp_send_rsp_s* %29, i32 0, i32 2
  store i8* null, i8** %30, align 8
  br label %38

31:                                               ; preds = %2
  %32 = load %struct.bfi_fcxp_send_rsp_s*, %struct.bfi_fcxp_send_rsp_s** %4, align 8
  %33 = getelementptr inbounds %struct.bfi_fcxp_send_rsp_s, %struct.bfi_fcxp_send_rsp_s* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @be32_to_cpu(i8* %34)
  %36 = load %struct.bfi_fcxp_send_rsp_s*, %struct.bfi_fcxp_send_rsp_s** %4, align 8
  %37 = getelementptr inbounds %struct.bfi_fcxp_send_rsp_s, %struct.bfi_fcxp_send_rsp_s* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %31, %28
  %39 = load %struct.bfa_fcxp_mod_s*, %struct.bfa_fcxp_mod_s** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call %struct.bfa_fcxp_s* @BFA_FCXP_FROM_TAG(%struct.bfa_fcxp_mod_s* %39, i32 %40)
  store %struct.bfa_fcxp_s* %41, %struct.bfa_fcxp_s** %6, align 8
  %42 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %43 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %42, i32 0, i32 1
  %44 = load i32 (i32*, %struct.bfa_fcxp_s*, i32, i64, i8*, i8*, i32*)*, i32 (i32*, %struct.bfa_fcxp_s*, i32, i64, i8*, i8*, i32*)** %43, align 8
  %45 = icmp eq i32 (i32*, %struct.bfa_fcxp_s*, i32, i64, i8*, i8*, i32*)* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @WARN_ON(i32 %46)
  %48 = load %struct.bfa_fcxp_mod_s*, %struct.bfa_fcxp_mod_s** %5, align 8
  %49 = getelementptr inbounds %struct.bfa_fcxp_mod_s, %struct.bfa_fcxp_mod_s* %48, i32 0, i32 0
  %50 = load %struct.bfa_s*, %struct.bfa_s** %49, align 8
  %51 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %52 = load %struct.bfi_fcxp_send_rsp_s*, %struct.bfi_fcxp_send_rsp_s** %4, align 8
  %53 = call i32 @hal_fcxp_rx_plog(%struct.bfa_s* %50, %struct.bfa_fcxp_s* %51, %struct.bfi_fcxp_send_rsp_s* %52)
  %54 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %55 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %54, i32 0, i32 1
  %56 = load i32 (i32*, %struct.bfa_fcxp_s*, i32, i64, i8*, i8*, i32*)*, i32 (i32*, %struct.bfa_fcxp_s*, i32, i64, i8*, i8*, i32*)** %55, align 8
  %57 = icmp ne i32 (i32*, %struct.bfa_fcxp_s*, i32, i64, i8*, i8*, i32*)* %56, null
  br i1 %57, label %58, label %125

58:                                               ; preds = %38
  %59 = load %struct.bfa_fcxp_mod_s*, %struct.bfa_fcxp_mod_s** %5, align 8
  %60 = getelementptr inbounds %struct.bfa_fcxp_mod_s, %struct.bfa_fcxp_mod_s* %59, i32 0, i32 0
  %61 = load %struct.bfa_s*, %struct.bfa_s** %60, align 8
  %62 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %63 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %62, i32 0, i32 7
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* null, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @bfa_trc(%struct.bfa_s* %61, i32 %66)
  %68 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %69 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %68, i32 0, i32 7
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %97

72:                                               ; preds = %58
  %73 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %74 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %73, i32 0, i32 1
  %75 = load i32 (i32*, %struct.bfa_fcxp_s*, i32, i64, i8*, i8*, i32*)*, i32 (i32*, %struct.bfa_fcxp_s*, i32, i64, i8*, i8*, i32*)** %74, align 8
  %76 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %77 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %76, i32 0, i32 7
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %80 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %81 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.bfi_fcxp_send_rsp_s*, %struct.bfi_fcxp_send_rsp_s** %4, align 8
  %84 = getelementptr inbounds %struct.bfi_fcxp_send_rsp_s, %struct.bfi_fcxp_send_rsp_s* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.bfi_fcxp_send_rsp_s*, %struct.bfi_fcxp_send_rsp_s** %4, align 8
  %87 = getelementptr inbounds %struct.bfi_fcxp_send_rsp_s, %struct.bfi_fcxp_send_rsp_s* %86, i32 0, i32 3
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.bfi_fcxp_send_rsp_s*, %struct.bfi_fcxp_send_rsp_s** %4, align 8
  %90 = getelementptr inbounds %struct.bfi_fcxp_send_rsp_s, %struct.bfi_fcxp_send_rsp_s* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.bfi_fcxp_send_rsp_s*, %struct.bfi_fcxp_send_rsp_s** %4, align 8
  %93 = getelementptr inbounds %struct.bfi_fcxp_send_rsp_s, %struct.bfi_fcxp_send_rsp_s* %92, i32 0, i32 1
  %94 = call i32 %75(i32* %78, %struct.bfa_fcxp_s* %79, i32 %82, i64 %85, i8* %88, i8* %91, i32* %93)
  %95 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %96 = call i32 @bfa_fcxp_free(%struct.bfa_fcxp_s* %95)
  br label %124

97:                                               ; preds = %58
  %98 = load %struct.bfi_fcxp_send_rsp_s*, %struct.bfi_fcxp_send_rsp_s** %4, align 8
  %99 = getelementptr inbounds %struct.bfi_fcxp_send_rsp_s, %struct.bfi_fcxp_send_rsp_s* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %102 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.bfi_fcxp_send_rsp_s*, %struct.bfi_fcxp_send_rsp_s** %4, align 8
  %104 = getelementptr inbounds %struct.bfi_fcxp_send_rsp_s, %struct.bfi_fcxp_send_rsp_s* %103, i32 0, i32 3
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %107 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %106, i32 0, i32 5
  store i8* %105, i8** %107, align 8
  %108 = load %struct.bfi_fcxp_send_rsp_s*, %struct.bfi_fcxp_send_rsp_s** %4, align 8
  %109 = getelementptr inbounds %struct.bfi_fcxp_send_rsp_s, %struct.bfi_fcxp_send_rsp_s* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %112 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  %113 = load %struct.bfi_fcxp_send_rsp_s*, %struct.bfi_fcxp_send_rsp_s** %4, align 8
  %114 = getelementptr inbounds %struct.bfi_fcxp_send_rsp_s, %struct.bfi_fcxp_send_rsp_s* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %117 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %119 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %120 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %119, i32 0, i32 2
  %121 = load i32, i32* @__bfa_fcxp_send_cbfn, align 4
  %122 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %123 = call i32 @bfa_cb_queue(%struct.bfa_s* %118, i32* %120, i32 %121, %struct.bfa_fcxp_s* %122)
  br label %124

124:                                              ; preds = %97, %72
  br label %133

125:                                              ; preds = %38
  %126 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %127 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %6, align 8
  %128 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %127, i32 0, i32 1
  %129 = load i32 (i32*, %struct.bfa_fcxp_s*, i32, i64, i8*, i8*, i32*)*, i32 (i32*, %struct.bfa_fcxp_s*, i32, i64, i8*, i8*, i32*)** %128, align 8
  %130 = icmp eq i32 (i32*, %struct.bfa_fcxp_s*, i32, i64, i8*, i8*, i32*)* null, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @bfa_trc(%struct.bfa_s* %126, i32 %131)
  br label %133

133:                                              ; preds = %125, %124
  ret void
}

declare dso_local %struct.bfa_fcxp_mod_s* @BFA_FCXP_MOD(%struct.bfa_s*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @bfa_trc(%struct.bfa_s*, i32) #1

declare dso_local i8* @be32_to_cpu(i8*) #1

declare dso_local %struct.bfa_fcxp_s* @BFA_FCXP_FROM_TAG(%struct.bfa_fcxp_mod_s*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @hal_fcxp_rx_plog(%struct.bfa_s*, %struct.bfa_fcxp_s*, %struct.bfi_fcxp_send_rsp_s*) #1

declare dso_local i32 @bfa_fcxp_free(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @bfa_cb_queue(%struct.bfa_s*, i32*, i32, %struct.bfa_fcxp_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
