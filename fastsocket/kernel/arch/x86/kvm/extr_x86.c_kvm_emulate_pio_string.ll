; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_emulate_pio_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_emulate_pio_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i32, i32 }

@KVM_EXIT_IO = common dso_local global i32 0, align 4
@KVM_EXIT_IO_IN = common dso_local global i32 0, align 4
@KVM_EXIT_IO_OUT = common dso_local global i32 0, align 4
@KVM_PIO_PAGE_OFFSET = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"guest string pio down\0A\00", align 1
@X86EMUL_PROPAGATE_FAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_emulate_pio_string(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.kvm_vcpu*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %17, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i64, i64* %13, align 8
  %28 = call i32 @trace_kvm_pio(i32 %24, i32 %25, i32 %26, i64 %27)
  %29 = load i32, i32* @KVM_EXIT_IO, align 4
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 8
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %8
  %37 = load i32, i32* @KVM_EXIT_IO_IN, align 4
  br label %40

38:                                               ; preds = %8
  %39 = load i32, i32* @KVM_EXIT_IO_OUT, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %43 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  store i32 %41, i32* %46, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %49 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 8
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %53 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 %47, i32* %56, align 8
  %57 = load i32, i32* @KVM_PIO_PAGE_OFFSET, align 4
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %61 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  store i32 %59, i32* %64, align 4
  %65 = load i64, i64* %13, align 8
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %67 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  store i64 %65, i64* %69, align 8
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %71 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  store i64 %65, i64* %73, align 8
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %75 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %74, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  store i64 %65, i64* %78, align 8
  %79 = load i32, i32* %17, align 4
  %80 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %81 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  store i32 %79, i32* %83, align 8
  %84 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %85 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  store i32 %79, i32* %88, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %91 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 4
  store i32 %89, i32* %93, align 4
  %94 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %95 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 5
  store i32 1, i32* %97, align 8
  %98 = load i32, i32* %14, align 4
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %100 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 6
  store i32 %98, i32* %102, align 4
  %103 = load i32, i32* %16, align 4
  %104 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %105 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 7
  store i32 %103, i32* %107, align 8
  %108 = load i64, i64* %13, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %40
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kvm_x86_ops, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %112, align 8
  %114 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %115 = call i32 %113(%struct.kvm_vcpu* %114)
  store i32 1, i32* %9, align 4
  br label %219

116:                                              ; preds = %40
  %117 = load i32, i32* %14, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* @PAGE_SIZE, align 4
  %121 = load i32, i32* %15, align 4
  %122 = call i32 @offset_in_page(i32 %121)
  %123 = sub nsw i32 %120, %122
  store i32 %123, i32* %19, align 4
  br label %129

124:                                              ; preds = %116
  %125 = load i32, i32* %15, align 4
  %126 = call i32 @offset_in_page(i32 %125)
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %126, %127
  store i32 %128, i32* %19, align 4
  br label %129

129:                                              ; preds = %124, %119
  %130 = load i64, i64* %13, align 8
  %131 = load i32, i32* %19, align 4
  %132 = zext i32 %131 to i64
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = udiv i64 %132, %134
  %136 = call i32 @min(i64 %130, i64 %135)
  store i32 %136, i32* %18, align 4
  %137 = load i32, i32* %18, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %129
  store i32 1, i32* %18, align 4
  br label %140

140:                                              ; preds = %139, %129
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %145 = call i32 @pr_unimpl(%struct.kvm_vcpu* %144, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %146 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %147 = call i32 @kvm_inject_gp(%struct.kvm_vcpu* %146, i32 0)
  store i32 1, i32* %9, align 4
  br label %219

148:                                              ; preds = %140
  %149 = load i32, i32* %18, align 4
  %150 = zext i32 %149 to i64
  %151 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %152 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %151, i32 0, i32 1
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 2
  store i64 %150, i64* %155, align 8
  %156 = load i32, i32* %18, align 4
  %157 = zext i32 %156 to i64
  %158 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %159 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 2
  store i64 %157, i64* %161, align 8
  %162 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %163 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %168 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp eq i64 %166, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %148
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kvm_x86_ops, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %175, align 8
  %177 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %178 = call i32 %176(%struct.kvm_vcpu* %177)
  br label %179

179:                                              ; preds = %173, %148
  %180 = load i32, i32* %15, align 4
  %181 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %182 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 8
  store i32 %180, i32* %184, align 4
  %185 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %186 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %217, label %191

191:                                              ; preds = %179
  %192 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %193 = call i32 @pio_copy_data(%struct.kvm_vcpu* %192)
  store i32 %193, i32* %20, align 4
  %194 = load i32, i32* %20, align 4
  %195 = load i32, i32* @X86EMUL_PROPAGATE_FAULT, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %191
  store i32 1, i32* %9, align 4
  br label %219

198:                                              ; preds = %191
  %199 = load i32, i32* %20, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %216

201:                                              ; preds = %198
  %202 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %203 = call i32 @pio_string_write(%struct.kvm_vcpu* %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %216, label %205

205:                                              ; preds = %201
  %206 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %207 = call i32 @complete_pio(%struct.kvm_vcpu* %206)
  %208 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %209 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %205
  store i32 1, i32* %20, align 4
  br label %215

215:                                              ; preds = %214, %205
  br label %216

216:                                              ; preds = %215, %201, %198
  br label %217

217:                                              ; preds = %216, %179
  %218 = load i32, i32* %20, align 4
  store i32 %218, i32* %9, align 4
  br label %219

219:                                              ; preds = %217, %197, %143, %110
  %220 = load i32, i32* %9, align 4
  ret i32 %220
}

declare dso_local i32 @trace_kvm_pio(i32, i32, i32, i64) #1

declare dso_local i32 @offset_in_page(i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @pr_unimpl(%struct.kvm_vcpu*, i8*) #1

declare dso_local i32 @kvm_inject_gp(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @pio_copy_data(%struct.kvm_vcpu*) #1

declare dso_local i32 @pio_string_write(%struct.kvm_vcpu*) #1

declare dso_local i32 @complete_pio(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
