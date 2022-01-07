; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_mmap_kvaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_mmap_kvaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i64, i64, i64, i32* }
%struct.qib_ctxtdata = type { i32, i64, i64, i32, i32*, i32*, i32*, i32*, %struct.qib_devdata* }
%struct.qib_devdata = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Can't map eager buffers as writable (flags=%lx)\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@VM_MAYWRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@qib_file_vm_ops = common dso_local global i32 0, align 4
@VM_RESERVED = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, %struct.qib_ctxtdata*, i32)* @mmap_kvaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmap_kvaddr(%struct.vm_area_struct* %0, i64 %1, %struct.qib_ctxtdata* %2, i32 %3) #0 {
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qib_ctxtdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qib_devdata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.qib_ctxtdata* %2, %struct.qib_ctxtdata** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %16 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %15, i32 0, i32 8
  %17 = load %struct.qib_devdata*, %struct.qib_devdata** %16, align 8
  store %struct.qib_devdata* %17, %struct.qib_devdata** %9, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %19 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %22 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %25 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = mul i64 %23, %26
  store i64 %27, i64* %13, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %30 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %29, i32 0, i32 7
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @cvt_kvaddr(i32* %31)
  %33 = icmp eq i64 %28, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %4
  %35 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %36 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %35, i32 0, i32 7
  %37 = load i32*, i32** %36, align 8
  %38 = bitcast i32* %37 to i8*
  store i8* %38, i8** %12, align 8
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = load i32, i32* %10, align 4
  %41 = mul i32 %39, %40
  %42 = zext i32 %41 to i64
  store i64 %42, i64* %13, align 8
  br label %200

43:                                               ; preds = %4
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %46 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %45, i32 0, i32 6
  %47 = load i32*, i32** %46, align 8
  %48 = call i64 @cvt_kvaddr(i32* %47)
  %49 = icmp eq i64 %44, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %43
  %51 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %52 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %51, i32 0, i32 6
  %53 = load i32*, i32** %52, align 8
  %54 = bitcast i32* %53 to i8*
  store i8* %54, i8** %12, align 8
  %55 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %56 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = mul i32 %57, %58
  %60 = zext i32 %59 to i64
  store i64 %60, i64* %13, align 8
  br label %199

61:                                               ; preds = %43
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %64 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = call i64 @cvt_kvaddr(i32* %65)
  %67 = icmp eq i64 %62, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %61
  %69 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %70 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = bitcast i32* %71 to i8*
  store i8* %72, i8** %12, align 8
  %73 = load i32, i32* %10, align 4
  %74 = zext i32 %73 to i64
  %75 = load i64, i64* %13, align 8
  %76 = mul i64 %75, %74
  store i64 %76, i64* %13, align 8
  br label %198

77:                                               ; preds = %61
  %78 = load i64, i64* %6, align 8
  %79 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %80 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %79, i32 0, i32 7
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* @PAGE_SIZE, align 4
  %83 = load i32, i32* %8, align 4
  %84 = mul i32 %82, %83
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %81, i64 %85
  %87 = call i64 @cvt_kvaddr(i32* %86)
  %88 = icmp eq i64 %78, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %77
  %90 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %91 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %90, i32 0, i32 7
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* @PAGE_SIZE, align 4
  %94 = load i32, i32* %8, align 4
  %95 = mul i32 %93, %94
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  %98 = bitcast i32* %97 to i8*
  store i8* %98, i8** %12, align 8
  %99 = load i32, i32* @PAGE_SIZE, align 4
  %100 = zext i32 %99 to i64
  store i64 %100, i64* %13, align 8
  br label %197

101:                                              ; preds = %77
  %102 = load i64, i64* %6, align 8
  %103 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %104 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %103, i32 0, i32 6
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %107 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = mul i32 %108, %109
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %105, i64 %111
  %113 = call i64 @cvt_kvaddr(i32* %112)
  %114 = icmp eq i64 %102, %113
  br i1 %114, label %115, label %131

115:                                              ; preds = %101
  %116 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %117 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %116, i32 0, i32 6
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %120 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = mul i32 %121, %122
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %118, i64 %124
  %126 = bitcast i32* %125 to i8*
  store i8* %126, i8** %12, align 8
  %127 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %128 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = zext i32 %129 to i64
  store i64 %130, i64* %13, align 8
  br label %196

131:                                              ; preds = %101
  %132 = load i64, i64* %6, align 8
  %133 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %134 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %133, i32 0, i32 5
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = call i64 @cvt_kvaddr(i32* %138)
  %140 = icmp eq i64 %132, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %131
  %142 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %143 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %142, i32 0, i32 5
  %144 = load i32*, i32** %143, align 8
  %145 = bitcast i32* %144 to i8*
  store i8* %145, i8** %12, align 8
  %146 = load i32, i32* @PAGE_SIZE, align 4
  %147 = zext i32 %146 to i64
  store i64 %147, i64* %13, align 8
  br label %195

148:                                              ; preds = %131
  %149 = load i64, i64* %6, align 8
  %150 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %151 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %150, i32 0, i32 4
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* %13, align 8
  %154 = load i32, i32* %8, align 4
  %155 = zext i32 %154 to i64
  %156 = mul i64 %153, %155
  %157 = getelementptr inbounds i32, i32* %152, i64 %156
  %158 = call i64 @cvt_kvaddr(i32* %157)
  %159 = icmp eq i64 %149, %158
  br i1 %159, label %160, label %193

160:                                              ; preds = %148
  %161 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %162 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %161, i32 0, i32 4
  %163 = load i32*, i32** %162, align 8
  %164 = load i64, i64* %13, align 8
  %165 = load i32, i32* %8, align 4
  %166 = zext i32 %165 to i64
  %167 = mul i64 %164, %166
  %168 = getelementptr inbounds i32, i32* %163, i64 %167
  %169 = bitcast i32* %168 to i8*
  store i8* %169, i8** %12, align 8
  %170 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %171 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @VM_WRITE, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %160
  %177 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %178 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %181 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @qib_devinfo(i32 %179, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* @EPERM, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %14, align 4
  br label %230

186:                                              ; preds = %160
  %187 = load i32, i32* @VM_MAYWRITE, align 4
  %188 = xor i32 %187, -1
  %189 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %190 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = and i32 %191, %188
  store i32 %192, i32* %190, align 8
  br label %194

193:                                              ; preds = %148
  br label %230

194:                                              ; preds = %186
  br label %195

195:                                              ; preds = %194, %141
  br label %196

196:                                              ; preds = %195, %115
  br label %197

197:                                              ; preds = %196, %89
  br label %198

198:                                              ; preds = %197, %68
  br label %199

199:                                              ; preds = %198, %50
  br label %200

200:                                              ; preds = %199, %34
  %201 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %202 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %205 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = sub i64 %203, %206
  store i64 %207, i64* %11, align 8
  %208 = load i64, i64* %11, align 8
  %209 = load i64, i64* %13, align 8
  %210 = icmp ugt i64 %208, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %200
  %212 = load i32, i32* @EINVAL, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %14, align 4
  br label %230

214:                                              ; preds = %200
  %215 = load i8*, i8** %12, align 8
  %216 = ptrtoint i8* %215 to i64
  %217 = load i64, i64* @PAGE_SHIFT, align 8
  %218 = lshr i64 %216, %217
  %219 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %220 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %219, i32 0, i32 3
  store i64 %218, i64* %220, align 8
  %221 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %222 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %221, i32 0, i32 4
  store i32* @qib_file_vm_ops, i32** %222, align 8
  %223 = load i32, i32* @VM_RESERVED, align 4
  %224 = load i32, i32* @VM_DONTEXPAND, align 4
  %225 = or i32 %223, %224
  %226 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %227 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 8
  store i32 1, i32* %14, align 4
  br label %230

230:                                              ; preds = %214, %211, %193, %176
  %231 = load i32, i32* %14, align 4
  ret i32 %231
}

declare dso_local i64 @cvt_kvaddr(i32*) #1

declare dso_local i32 @qib_devinfo(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
