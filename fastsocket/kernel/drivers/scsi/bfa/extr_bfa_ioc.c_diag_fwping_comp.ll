; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_diag_fwping_comp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_diag_fwping_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_diag_s = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64, i8*, i32, i32 (i32, i8*)*, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i8* }
%struct.bfi_diag_fwping_rsp_s = type { i64, i64 }

@BFA_STATUS_OK = common dso_local global i64 0, align 8
@BFA_STATUS_DATACORRUPTED = common dso_local global i8* null, align 8
@BFI_DIAG_DMA_BUF_SZ = common dso_local global i32 0, align 4
@BFA_STATUS_HDMA_FAILED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_diag_s*, %struct.bfi_diag_fwping_rsp_s*)* @diag_fwping_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diag_fwping_comp(%struct.bfa_diag_s* %0, %struct.bfi_diag_fwping_rsp_s* %1) #0 {
  %3 = alloca %struct.bfa_diag_s*, align 8
  %4 = alloca %struct.bfi_diag_fwping_rsp_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.bfa_diag_s* %0, %struct.bfa_diag_s** %3, align 8
  store %struct.bfi_diag_fwping_rsp_s* %1, %struct.bfi_diag_fwping_rsp_s** %4, align 8
  %9 = load %struct.bfi_diag_fwping_rsp_s*, %struct.bfi_diag_fwping_rsp_s** %4, align 8
  %10 = getelementptr inbounds %struct.bfi_diag_fwping_rsp_s, %struct.bfi_diag_fwping_rsp_s* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.bfi_diag_fwping_rsp_s*, %struct.bfi_diag_fwping_rsp_s** %4, align 8
  %13 = getelementptr inbounds %struct.bfi_diag_fwping_rsp_s, %struct.bfi_diag_fwping_rsp_s* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @bfa_trc(%struct.bfa_diag_s* %15, i64 %16)
  %18 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @bfa_trc(%struct.bfa_diag_s* %18, i64 %19)
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @BFA_STATUS_OK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %174

24:                                               ; preds = %2
  %25 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %26 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %33 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = xor i64 %35, -1
  br label %42

37:                                               ; preds = %24
  %38 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %39 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  br label %42

42:                                               ; preds = %37, %31
  %43 = phi i64 [ %36, %31 ], [ %41, %37 ]
  store i64 %43, i64* %8, align 8
  %44 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %45 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %80

50:                                               ; preds = %42
  %51 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @bfa_trc(%struct.bfa_diag_s* %51, i64 %52)
  %54 = load i8*, i8** @BFA_STATUS_DATACORRUPTED, align 8
  %55 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %56 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 6
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i8* %54, i8** %59, align 8
  %60 = load i8*, i8** @BFA_STATUS_DATACORRUPTED, align 8
  %61 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %62 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  store i8* %60, i8** %63, align 8
  %64 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %65 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 5
  %67 = load i32 (i32, i8*)*, i32 (i32, i8*)** %66, align 8
  %68 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %69 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %73 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 %67(i32 %71, i8* %75)
  %77 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %78 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  br label %195

80:                                               ; preds = %42
  store i64 0, i64* %7, align 8
  br label %81

81:                                               ; preds = %142, %80
  %82 = load i64, i64* %7, align 8
  %83 = load i32, i32* @BFI_DIAG_DMA_BUF_SZ, align 4
  %84 = ashr i32 %83, 2
  %85 = sext i32 %84 to i64
  %86 = icmp slt i64 %82, %85
  br i1 %86, label %87, label %145

87:                                               ; preds = %81
  %88 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %89 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 7
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i64*
  %93 = load i64, i64* %7, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %8, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %141

98:                                               ; preds = %87
  %99 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @bfa_trc(%struct.bfa_diag_s* %99, i64 %100)
  %102 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %103 = load i64, i64* %8, align 8
  %104 = call i32 @bfa_trc(%struct.bfa_diag_s* %102, i64 %103)
  %105 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %106 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %107 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i64*
  %111 = load i64, i64* %7, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @bfa_trc(%struct.bfa_diag_s* %105, i64 %113)
  %115 = load i8*, i8** @BFA_STATUS_DATACORRUPTED, align 8
  %116 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %117 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 6
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  store i8* %115, i8** %120, align 8
  %121 = load i8*, i8** @BFA_STATUS_DATACORRUPTED, align 8
  %122 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %123 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 3
  store i8* %121, i8** %124, align 8
  %125 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %126 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 5
  %128 = load i32 (i32, i8*)*, i32 (i32, i8*)** %127, align 8
  %129 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %130 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %134 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 3
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 %128(i32 %132, i8* %136)
  %138 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %139 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 2
  store i64 0, i64* %140, align 8
  br label %195

141:                                              ; preds = %87
  br label %142

142:                                              ; preds = %141
  %143 = load i64, i64* %7, align 8
  %144 = add nsw i64 %143, 1
  store i64 %144, i64* %7, align 8
  br label %81

145:                                              ; preds = %81
  %146 = load i64, i64* @BFA_STATUS_OK, align 8
  %147 = inttoptr i64 %146 to i8*
  %148 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %149 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 6
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  store i8* %147, i8** %152, align 8
  %153 = load i64, i64* @BFA_STATUS_OK, align 8
  %154 = inttoptr i64 %153 to i8*
  %155 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %156 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 3
  store i8* %154, i8** %157, align 8
  %158 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %159 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 5
  %161 = load i32 (i32, i8*)*, i32 (i32, i8*)** %160, align 8
  %162 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %163 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %167 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 3
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 %161(i32 %165, i8* %169)
  %171 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %172 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 2
  store i64 0, i64* %173, align 8
  br label %195

174:                                              ; preds = %2
  %175 = load i8*, i8** @BFA_STATUS_HDMA_FAILED, align 8
  %176 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %177 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 3
  store i8* %175, i8** %178, align 8
  %179 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %180 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 5
  %182 = load i32 (i32, i8*)*, i32 (i32, i8*)** %181, align 8
  %183 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %184 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %188 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 3
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 %182(i32 %186, i8* %190)
  %192 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %193 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  store i64 0, i64* %194, align 8
  br label %195

195:                                              ; preds = %50, %98, %174, %145
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_diag_s*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
