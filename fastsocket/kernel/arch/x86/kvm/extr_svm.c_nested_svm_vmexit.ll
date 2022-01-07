; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_nested_svm_vmexit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_nested_svm_vmexit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_18__, %struct.vmcb*, %struct.TYPE_16__ }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.vmcb = type { %struct.vmcb_control_area, %struct.TYPE_17__ }
%struct.vmcb_control_area = type { i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.vmcb* }

@KM_USER0 = common dso_local global i32 0, align 4
@npt_enabled = common dso_local global i64 0, align 8
@SVM_EVTINJ_VALID = common dso_local global i32 0, align 4
@HF_VINTR_MASK = common dso_local global i32 0, align 4
@V_INTR_MASKING_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"WARNING: Pending Exception\0A\00", align 1
@X86_CR0_PE = common dso_local global i32 0, align 4
@VMCB_CR = common dso_local global i32 0, align 4
@VCPU_REGS_RAX = common dso_local global i32 0, align 4
@VCPU_REGS_RSP = common dso_local global i32 0, align 4
@VCPU_REGS_RIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @nested_svm_vmexit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_svm_vmexit(%struct.vcpu_svm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca %struct.vmcb*, align 8
  %5 = alloca %struct.vmcb*, align 8
  %6 = alloca %struct.vmcb*, align 8
  %7 = alloca %struct.vmcb_control_area*, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  %8 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %9 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %11 = load %struct.vmcb*, %struct.vmcb** %10, align 8
  store %struct.vmcb* %11, %struct.vmcb** %5, align 8
  %12 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %13 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %12, i32 0, i32 1
  %14 = load %struct.vmcb*, %struct.vmcb** %13, align 8
  store %struct.vmcb* %14, %struct.vmcb** %6, align 8
  %15 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %16 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %17 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @KM_USER0, align 4
  %21 = call %struct.vmcb* @nested_svm_map(%struct.vcpu_svm* %15, i32 %19, i32 %20)
  store %struct.vmcb* %21, %struct.vmcb** %4, align 8
  %22 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %23 = icmp ne %struct.vmcb* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %443

25:                                               ; preds = %1
  %26 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %27 = call i32 @disable_gif(%struct.vcpu_svm* %26)
  %28 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %29 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 15
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %33 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 15
  store i32 %31, i32* %34, align 8
  %35 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %36 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 14
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %40 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 14
  store i32 %38, i32* %41, align 4
  %42 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %43 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 13
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %47 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 13
  store i32 %45, i32* %48, align 8
  %49 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %50 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 12
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %54 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 12
  store i32 %52, i32* %55, align 4
  %56 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %57 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 11
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %61 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 11
  store i32 %59, i32* %62, align 8
  %63 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %64 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 10
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %68 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 10
  store i32 %66, i32* %69, align 4
  %70 = load i64, i64* @npt_enabled, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %25
  %73 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %74 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %78 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 6
  store i32 %76, i32* %79, align 4
  br label %80

80:                                               ; preds = %72, %25
  %81 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %82 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 17
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %86 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 17
  store i32 %84, i32* %87, align 8
  %88 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %89 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %93 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 9
  store i32 %91, i32* %94, align 8
  %95 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %96 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %100 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 3
  store i32 %98, i32* %101, align 8
  %102 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %103 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %107 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 4
  store i32 %105, i32* %108, align 4
  %109 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %110 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %114 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 5
  store i32 %112, i32* %115, align 8
  %116 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %117 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %121 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 2
  store i64 %119, i64* %122, align 8
  %123 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %124 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 16
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %128 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 16
  store i32 %126, i32* %129, align 4
  %130 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %131 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %135 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 1
  store i64 %133, i64* %136, align 8
  %137 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %138 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %142 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %142, i32 0, i32 2
  store i32 %140, i32* %143, align 8
  %144 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %145 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %145, i32 0, i32 11
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %149 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %149, i32 0, i32 11
  store i32 %147, i32* %150, align 4
  %151 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %152 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %152, i32 0, i32 10
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %156 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %156, i32 0, i32 10
  store i32 %154, i32* %157, align 8
  %158 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %159 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %159, i32 0, i32 9
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %163 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %163, i32 0, i32 9
  store i32 %161, i32* %164, align 4
  %165 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %166 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %166, i32 0, i32 8
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %170 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %170, i32 0, i32 8
  store i32 %168, i32* %171, align 8
  %172 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %173 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %177 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %177, i32 0, i32 7
  store i32 %175, i32* %178, align 4
  %179 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %180 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %184 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %184, i32 0, i32 6
  store i32 %182, i32* %185, align 8
  %186 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %187 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %191 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %191, i32 0, i32 0
  store i32 %189, i32* %192, align 8
  %193 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %194 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %194, i32 0, i32 5
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %198 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %198, i32 0, i32 5
  store i64 %196, i64* %199, align 8
  %200 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %201 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @SVM_EVTINJ_VALID, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %222

207:                                              ; preds = %80
  %208 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %209 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %208, i32 0, i32 0
  store %struct.vmcb_control_area* %209, %struct.vmcb_control_area** %7, align 8
  %210 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %211 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %7, align 8
  %215 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  %216 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %217 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %7, align 8
  %221 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %220, i32 0, i32 5
  store i64 %219, i64* %221, align 8
  br label %222

222:                                              ; preds = %207, %80
  %223 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %224 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %224, i32 0, i32 4
  store i64 0, i64* %225, align 8
  %226 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %227 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %227, i32 0, i32 1
  store i32 0, i32* %228, align 4
  %229 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %230 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %230, i32 0, i32 3
  store i64 0, i64* %231, align 8
  %232 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %233 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @HF_VINTR_MASK, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %248, label %240

240:                                              ; preds = %222
  %241 = load i32, i32* @V_INTR_MASKING_MASK, align 4
  %242 = xor i32 %241, -1
  %243 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %244 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = and i32 %246, %242
  store i32 %247, i32* %245, align 8
  br label %248

248:                                              ; preds = %240, %222
  %249 = load %struct.vmcb*, %struct.vmcb** %6, align 8
  %250 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %251 = call i32 @copy_vmcb_control_area(%struct.vmcb* %249, %struct.vmcb* %250)
  %252 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %253 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = icmp eq i32 %257, 1
  br i1 %258, label %259, label %261

259:                                              ; preds = %248
  %260 = call i32 @nsvm_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %261

261:                                              ; preds = %259, %248
  %262 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %263 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %262, i32 0, i32 0
  %264 = call i32 @kvm_clear_exception_queue(%struct.TYPE_18__* %263)
  %265 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %266 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %265, i32 0, i32 0
  %267 = call i32 @kvm_clear_interrupt_queue(%struct.TYPE_18__* %266)
  %268 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %269 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 15
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %273 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %272, i32 0, i32 1
  %274 = load %struct.vmcb*, %struct.vmcb** %273, align 8
  %275 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 15
  store i32 %271, i32* %276, align 8
  %277 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %278 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 14
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %282 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %281, i32 0, i32 1
  %283 = load %struct.vmcb*, %struct.vmcb** %282, align 8
  %284 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 14
  store i32 %280, i32* %285, align 4
  %286 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %287 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 13
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %291 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %290, i32 0, i32 1
  %292 = load %struct.vmcb*, %struct.vmcb** %291, align 8
  %293 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 13
  store i32 %289, i32* %294, align 8
  %295 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %296 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 12
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %300 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %299, i32 0, i32 1
  %301 = load %struct.vmcb*, %struct.vmcb** %300, align 8
  %302 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 12
  store i32 %298, i32* %303, align 4
  %304 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %305 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %305, i32 0, i32 11
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %309 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %308, i32 0, i32 1
  %310 = load %struct.vmcb*, %struct.vmcb** %309, align 8
  %311 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %311, i32 0, i32 11
  store i32 %307, i32* %312, align 8
  %313 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %314 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %314, i32 0, i32 10
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %318 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %317, i32 0, i32 1
  %319 = load %struct.vmcb*, %struct.vmcb** %318, align 8
  %320 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %320, i32 0, i32 10
  store i32 %316, i32* %321, align 4
  %322 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %323 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %323, i32 0, i32 9
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %327 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %326, i32 0, i32 1
  %328 = load %struct.vmcb*, %struct.vmcb** %327, align 8
  %329 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %329, i32 0, i32 9
  store i32 %325, i32* %330, align 8
  %331 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %332 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %331, i32 0, i32 0
  %333 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %334 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %333, i32 0, i32 1
  %335 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %334, i32 0, i32 8
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @svm_set_efer(%struct.TYPE_18__* %332, i32 %336)
  %338 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %339 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %338, i32 0, i32 0
  %340 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %341 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @X86_CR0_PE, align 4
  %345 = or i32 %343, %344
  %346 = call i32 @svm_set_cr0(%struct.TYPE_18__* %339, i32 %345)
  %347 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %348 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %347, i32 0, i32 0
  %349 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %350 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %350, i32 0, i32 7
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @svm_set_cr4(%struct.TYPE_18__* %348, i32 %352)
  %354 = load i64, i64* @npt_enabled, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %374

356:                                              ; preds = %261
  %357 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %358 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %358, i32 0, i32 6
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %362 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %361, i32 0, i32 1
  %363 = load %struct.vmcb*, %struct.vmcb** %362, align 8
  %364 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %363, i32 0, i32 1
  %365 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %364, i32 0, i32 6
  store i32 %360, i32* %365, align 4
  %366 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %367 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %367, i32 0, i32 6
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %371 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %372, i32 0, i32 1
  store i32 %369, i32* %373, align 4
  br label %382

374:                                              ; preds = %261
  %375 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %376 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %375, i32 0, i32 0
  %377 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %378 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %378, i32 0, i32 6
  %380 = load i32, i32* %379, align 4
  %381 = call i32 @kvm_set_cr3(%struct.TYPE_18__* %376, i32 %380)
  br label %382

382:                                              ; preds = %374, %356
  %383 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %384 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %383, i32 0, i32 1
  %385 = load %struct.vmcb*, %struct.vmcb** %384, align 8
  %386 = load i32, i32* @VMCB_CR, align 4
  %387 = call i32 @mark_dirty(%struct.vmcb* %385, i32 %386)
  %388 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %389 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %388, i32 0, i32 0
  %390 = load i32, i32* @VCPU_REGS_RAX, align 4
  %391 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %392 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %391, i32 0, i32 1
  %393 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %392, i32 0, i32 5
  %394 = load i32, i32* %393, align 8
  %395 = call i32 @kvm_register_write(%struct.TYPE_18__* %389, i32 %390, i32 %394)
  %396 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %397 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %396, i32 0, i32 0
  %398 = load i32, i32* @VCPU_REGS_RSP, align 4
  %399 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %400 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %399, i32 0, i32 1
  %401 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %400, i32 0, i32 4
  %402 = load i32, i32* %401, align 4
  %403 = call i32 @kvm_register_write(%struct.TYPE_18__* %397, i32 %398, i32 %402)
  %404 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %405 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %404, i32 0, i32 0
  %406 = load i32, i32* @VCPU_REGS_RIP, align 4
  %407 = load %struct.vmcb*, %struct.vmcb** %5, align 8
  %408 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %407, i32 0, i32 1
  %409 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %408, i32 0, i32 3
  %410 = load i32, i32* %409, align 8
  %411 = call i32 @kvm_register_write(%struct.TYPE_18__* %405, i32 %406, i32 %410)
  %412 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %413 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %412, i32 0, i32 1
  %414 = load %struct.vmcb*, %struct.vmcb** %413, align 8
  %415 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %415, i32 0, i32 2
  store i64 0, i64* %416, align 8
  %417 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %418 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %417, i32 0, i32 1
  %419 = load %struct.vmcb*, %struct.vmcb** %418, align 8
  %420 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %419, i32 0, i32 1
  %421 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %420, i32 0, i32 1
  store i64 0, i64* %421, align 8
  %422 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %423 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %422, i32 0, i32 1
  %424 = load %struct.vmcb*, %struct.vmcb** %423, align 8
  %425 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %425, i32 0, i32 0
  store i32 0, i32* %426, align 8
  %427 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %428 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %427, i32 0, i32 2
  %429 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %428, i32 0, i32 0
  store i32 0, i32* %429, align 8
  %430 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %431 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %430, i32 0, i32 1
  %432 = load %struct.vmcb*, %struct.vmcb** %431, align 8
  %433 = call i32 @mark_all_dirty(%struct.vmcb* %432)
  %434 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %435 = load i32, i32* @KM_USER0, align 4
  %436 = call i32 @nested_svm_unmap(%struct.vmcb* %434, i32 %435)
  %437 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %438 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %437, i32 0, i32 0
  %439 = call i32 @kvm_mmu_reset_context(%struct.TYPE_18__* %438)
  %440 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %441 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %440, i32 0, i32 0
  %442 = call i32 @kvm_mmu_load(%struct.TYPE_18__* %441)
  store i32 0, i32* %2, align 4
  br label %443

443:                                              ; preds = %382, %24
  %444 = load i32, i32* %2, align 4
  ret i32 %444
}

declare dso_local %struct.vmcb* @nested_svm_map(%struct.vcpu_svm*, i32, i32) #1

declare dso_local i32 @disable_gif(%struct.vcpu_svm*) #1

declare dso_local i32 @copy_vmcb_control_area(%struct.vmcb*, %struct.vmcb*) #1

declare dso_local i32 @nsvm_printk(i8*) #1

declare dso_local i32 @kvm_clear_exception_queue(%struct.TYPE_18__*) #1

declare dso_local i32 @kvm_clear_interrupt_queue(%struct.TYPE_18__*) #1

declare dso_local i32 @svm_set_efer(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @svm_set_cr0(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @svm_set_cr4(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @kvm_set_cr3(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @mark_dirty(%struct.vmcb*, i32) #1

declare dso_local i32 @kvm_register_write(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @mark_all_dirty(%struct.vmcb*) #1

declare dso_local i32 @nested_svm_unmap(%struct.vmcb*, i32) #1

declare dso_local i32 @kvm_mmu_reset_context(%struct.TYPE_18__*) #1

declare dso_local i32 @kvm_mmu_load(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
