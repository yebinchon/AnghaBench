; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_set_segment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_set_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vmx_segment_field = type { i32, i32, i32, i32 }
%struct.kvm_vcpu = type { i32 }
%struct.kvm_segment = type { i32, i32, i32, i64 }
%struct.vcpu_vmx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i8* }

@kvm_vmx_segment_fields = common dso_local global %struct.kvm_vmx_segment_field* null, align 8
@VCPU_SREG_TR = common dso_local global i32 0, align 4
@enable_unrestricted_guest = common dso_local global i64 0, align 8
@VCPU_SREG_LDTR = common dso_local global i32 0, align 4
@GUEST_CS_AR_BYTES = common dso_local global i32 0, align 4
@GUEST_CS_LIMIT = common dso_local global i32 0, align 4
@GUEST_CS_BASE = common dso_local global i32 0, align 4
@GUEST_CS_SELECTOR = common dso_local global i32 0, align 4
@GUEST_SS_SELECTOR = common dso_local global i32 0, align 4
@GUEST_SS_BASE = common dso_local global i32 0, align 4
@GUEST_SS_LIMIT = common dso_local global i32 0, align 4
@GUEST_SS_AR_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_segment*, i32)* @vmx_set_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_set_segment(%struct.kvm_vcpu* %0, %struct.kvm_segment* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_segment*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vcpu_vmx*, align 8
  %8 = alloca %struct.kvm_vmx_segment_field*, align 8
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_segment* %1, %struct.kvm_segment** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %11 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %10)
  store %struct.vcpu_vmx* %11, %struct.vcpu_vmx** %7, align 8
  %12 = load %struct.kvm_vmx_segment_field*, %struct.kvm_vmx_segment_field** @kvm_vmx_segment_fields, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.kvm_vmx_segment_field, %struct.kvm_vmx_segment_field* %12, i64 %14
  store %struct.kvm_vmx_segment_field* %15, %struct.kvm_vmx_segment_field** %8, align 8
  %16 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %17 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @VCPU_SREG_TR, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %60

25:                                               ; preds = %21
  %26 = load %struct.kvm_vmx_segment_field*, %struct.kvm_vmx_segment_field** %8, align 8
  %27 = getelementptr inbounds %struct.kvm_vmx_segment_field, %struct.kvm_vmx_segment_field* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %30 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @vmcs_write16(i32 %28, i32 %31)
  %33 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %34 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %37 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 8
  %40 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %41 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %44 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i32 %42, i32* %46, align 4
  %47 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %48 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %51 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  store i32 %49, i32* %53, align 8
  %54 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %55 = call i8* @vmx_segment_access_rights(%struct.kvm_segment* %54)
  %56 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %57 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  store i8* %55, i8** %59, align 8
  br label %186

60:                                               ; preds = %21, %3
  %61 = load %struct.kvm_vmx_segment_field*, %struct.kvm_vmx_segment_field** %8, align 8
  %62 = getelementptr inbounds %struct.kvm_vmx_segment_field, %struct.kvm_vmx_segment_field* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %65 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @vmcs_writel(i32 %63, i32 %66)
  %68 = load %struct.kvm_vmx_segment_field*, %struct.kvm_vmx_segment_field** %8, align 8
  %69 = getelementptr inbounds %struct.kvm_vmx_segment_field, %struct.kvm_vmx_segment_field* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %72 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @vmcs_write32(i32 %70, i32 %73)
  %75 = load %struct.kvm_vmx_segment_field*, %struct.kvm_vmx_segment_field** %8, align 8
  %76 = getelementptr inbounds %struct.kvm_vmx_segment_field, %struct.kvm_vmx_segment_field* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %79 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @vmcs_write16(i32 %77, i32 %80)
  %82 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %83 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %60
  %88 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %89 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %87
  %93 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %94 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, -65536
  br i1 %96, label %97, label %107

97:                                               ; preds = %92
  %98 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %99 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 61440
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.kvm_vmx_segment_field*, %struct.kvm_vmx_segment_field** %8, align 8
  %104 = getelementptr inbounds %struct.kvm_vmx_segment_field, %struct.kvm_vmx_segment_field* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @vmcs_writel(i32 %105, i32 983040)
  br label %107

107:                                              ; preds = %102, %97, %92
  store i32 243, i32* %9, align 4
  br label %112

108:                                              ; preds = %87, %60
  %109 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %110 = call i8* @vmx_segment_access_rights(%struct.kvm_segment* %109)
  %111 = ptrtoint i8* %110 to i32
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %108, %107
  %113 = load i64, i64* @enable_unrestricted_guest, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @VCPU_SREG_LDTR, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i32, i32* %9, align 4
  %121 = or i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %119, %115, %112
  %123 = load %struct.kvm_vmx_segment_field*, %struct.kvm_vmx_segment_field** %8, align 8
  %124 = getelementptr inbounds %struct.kvm_vmx_segment_field, %struct.kvm_vmx_segment_field* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @vmcs_write32(i32 %125, i32 %126)
  %128 = load i64, i64* @enable_unrestricted_guest, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %186, label %130

130:                                              ; preds = %122
  %131 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %132 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %186

136:                                              ; preds = %130
  %137 = load i32, i32* %6, align 4
  switch i32 %137, label %185 [
    i32 133, label %138
    i32 131, label %155
    i32 132, label %160
    i32 129, label %165
    i32 130, label %170
    i32 128, label %175
  ]

138:                                              ; preds = %136
  %139 = load i32, i32* @GUEST_CS_AR_BYTES, align 4
  %140 = call i32 @vmcs_write32(i32 %139, i32 243)
  %141 = load i32, i32* @GUEST_CS_LIMIT, align 4
  %142 = call i32 @vmcs_write32(i32 %141, i32 65535)
  %143 = load i32, i32* @GUEST_CS_BASE, align 4
  %144 = call i32 @vmcs_readl(i32 %143)
  %145 = icmp eq i32 %144, -65536
  br i1 %145, label %146, label %149

146:                                              ; preds = %138
  %147 = load i32, i32* @GUEST_CS_BASE, align 4
  %148 = call i32 @vmcs_writel(i32 %147, i32 983040)
  br label %149

149:                                              ; preds = %146, %138
  %150 = load i32, i32* @GUEST_CS_SELECTOR, align 4
  %151 = load i32, i32* @GUEST_CS_BASE, align 4
  %152 = call i32 @vmcs_readl(i32 %151)
  %153 = ashr i32 %152, 4
  %154 = call i32 @vmcs_write16(i32 %150, i32 %153)
  br label %185

155:                                              ; preds = %136
  %156 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %157 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 3
  %159 = call i32 @fix_rmode_seg(i32 131, i32* %158)
  br label %185

160:                                              ; preds = %136
  %161 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %162 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 2
  %164 = call i32 @fix_rmode_seg(i32 132, i32* %163)
  br label %185

165:                                              ; preds = %136
  %166 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %167 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 1
  %169 = call i32 @fix_rmode_seg(i32 129, i32* %168)
  br label %185

170:                                              ; preds = %136
  %171 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %172 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = call i32 @fix_rmode_seg(i32 130, i32* %173)
  br label %185

175:                                              ; preds = %136
  %176 = load i32, i32* @GUEST_SS_SELECTOR, align 4
  %177 = load i32, i32* @GUEST_SS_BASE, align 4
  %178 = call i32 @vmcs_readl(i32 %177)
  %179 = ashr i32 %178, 4
  %180 = call i32 @vmcs_write16(i32 %176, i32 %179)
  %181 = load i32, i32* @GUEST_SS_LIMIT, align 4
  %182 = call i32 @vmcs_write32(i32 %181, i32 65535)
  %183 = load i32, i32* @GUEST_SS_AR_BYTES, align 4
  %184 = call i32 @vmcs_write32(i32 %183, i32 243)
  br label %185

185:                                              ; preds = %136, %175, %170, %165, %160, %155, %149
  br label %186

186:                                              ; preds = %25, %185, %130, %122
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmcs_write16(i32, i32) #1

declare dso_local i8* @vmx_segment_access_rights(%struct.kvm_segment*) #1

declare dso_local i32 @vmcs_writel(i32, i32) #1

declare dso_local i32 @vmcs_write32(i32, i32) #1

declare dso_local i32 @vmcs_readl(i32) #1

declare dso_local i32 @fix_rmode_seg(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
