; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_mmap_kvaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_mmap_kvaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i64, i64, i64, i32* }
%struct.ipath_portdata = type { i32, i64, i64, i64, i8*, i8*, i8*, %struct.ipath_devdata* }
%struct.ipath_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Can't map eager buffers as writable (flags=%lx)\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@VM_MAYWRITE = common dso_local global i32 0, align 4
@MM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"FAIL: reqlen %lx > %zx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@ipath_file_vm_ops = common dso_local global i32 0, align 4
@VM_RESERVED = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, %struct.ipath_portdata*, i32)* @mmap_kvaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmap_kvaddr(%struct.vm_area_struct* %0, i64 %1, %struct.ipath_portdata* %2, i32 %3) #0 {
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ipath_portdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.ipath_devdata*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ipath_portdata* %2, %struct.ipath_portdata** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %15 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %218

19:                                               ; preds = %4
  %20 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %21 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %20, i32 0, i32 7
  %22 = load %struct.ipath_devdata*, %struct.ipath_devdata** %21, align 8
  store %struct.ipath_devdata* %22, %struct.ipath_devdata** %10, align 8
  %23 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %24 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %27 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = mul i64 %25, %28
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %32 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %31, i32 0, i32 6
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @cvt_kvaddr(i8* %33)
  %35 = icmp eq i64 %30, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %19
  %37 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %38 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %37, i32 0, i32 6
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %11, align 8
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %42 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = mul i32 %40, %43
  %45 = zext i32 %44 to i64
  store i64 %45, i64* %12, align 8
  br label %184

46:                                               ; preds = %19
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %49 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %48, i32 0, i32 5
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @cvt_kvaddr(i8* %50)
  %52 = icmp eq i64 %47, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %46
  %54 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %55 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %54, i32 0, i32 5
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %11, align 8
  %57 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %58 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %61 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = zext i32 %62 to i64
  %64 = mul i64 %59, %63
  store i64 %64, i64* %12, align 8
  br label %183

65:                                               ; preds = %46
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %68 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %67, i32 0, i32 4
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @cvt_kvaddr(i8* %69)
  %71 = icmp eq i64 %66, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %74 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %73, i32 0, i32 4
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %11, align 8
  %76 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %77 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %12, align 8
  %81 = mul i64 %80, %79
  store i64 %81, i64* %12, align 8
  br label %182

82:                                               ; preds = %65
  %83 = load i64, i64* %6, align 8
  %84 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %85 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %84, i32 0, i32 6
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* @PAGE_SIZE, align 4
  %88 = load i32, i32* %8, align 4
  %89 = mul i32 %87, %88
  %90 = zext i32 %89 to i64
  %91 = getelementptr i8, i8* %86, i64 %90
  %92 = call i64 @cvt_kvaddr(i8* %91)
  %93 = icmp eq i64 %83, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %82
  %95 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %96 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %95, i32 0, i32 6
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* @PAGE_SIZE, align 4
  %99 = load i32, i32* %8, align 4
  %100 = mul i32 %98, %99
  %101 = zext i32 %100 to i64
  %102 = getelementptr i8, i8* %97, i64 %101
  store i8* %102, i8** %11, align 8
  %103 = load i32, i32* @PAGE_SIZE, align 4
  %104 = zext i32 %103 to i64
  store i64 %104, i64* %12, align 8
  br label %181

105:                                              ; preds = %82
  %106 = load i64, i64* %6, align 8
  %107 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %108 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %107, i32 0, i32 5
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %111 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = zext i32 %113 to i64
  %115 = mul i64 %112, %114
  %116 = getelementptr i8, i8* %109, i64 %115
  %117 = call i64 @cvt_kvaddr(i8* %116)
  %118 = icmp eq i64 %106, %117
  br i1 %118, label %119, label %133

119:                                              ; preds = %105
  %120 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %121 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %120, i32 0, i32 5
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %124 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = zext i32 %126 to i64
  %128 = mul i64 %125, %127
  %129 = getelementptr i8, i8* %122, i64 %128
  store i8* %129, i8** %11, align 8
  %130 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %131 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %12, align 8
  br label %180

133:                                              ; preds = %105
  %134 = load i64, i64* %6, align 8
  %135 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %136 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %135, i32 0, i32 4
  %137 = load i8*, i8** %136, align 8
  %138 = load i64, i64* %12, align 8
  %139 = load i32, i32* %8, align 4
  %140 = zext i32 %139 to i64
  %141 = mul i64 %138, %140
  %142 = getelementptr i8, i8* %137, i64 %141
  %143 = call i64 @cvt_kvaddr(i8* %142)
  %144 = icmp eq i64 %134, %143
  br i1 %144, label %145, label %178

145:                                              ; preds = %133
  %146 = load %struct.ipath_portdata*, %struct.ipath_portdata** %7, align 8
  %147 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %146, i32 0, i32 4
  %148 = load i8*, i8** %147, align 8
  %149 = load i64, i64* %12, align 8
  %150 = load i32, i32* %8, align 4
  %151 = zext i32 %150 to i64
  %152 = mul i64 %149, %151
  %153 = getelementptr i8, i8* %148, i64 %152
  store i8* %153, i8** %11, align 8
  %154 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %155 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @VM_WRITE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %145
  %161 = load %struct.ipath_devdata*, %struct.ipath_devdata** %10, align 8
  %162 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %161, i32 0, i32 0
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %166 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @dev_info(i32* %164, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* @EPERM, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %13, align 4
  br label %218

171:                                              ; preds = %145
  %172 = load i32, i32* @VM_MAYWRITE, align 4
  %173 = xor i32 %172, -1
  %174 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %175 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = and i32 %176, %173
  store i32 %177, i32* %175, align 8
  br label %179

178:                                              ; preds = %133
  br label %218

179:                                              ; preds = %171
  br label %180

180:                                              ; preds = %179, %119
  br label %181

181:                                              ; preds = %180, %94
  br label %182

182:                                              ; preds = %181, %72
  br label %183

183:                                              ; preds = %182, %53
  br label %184

184:                                              ; preds = %183, %36
  %185 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %186 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %189 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = sub i64 %187, %190
  store i64 %191, i64* %9, align 8
  %192 = load i64, i64* %9, align 8
  %193 = load i64, i64* %12, align 8
  %194 = icmp ugt i64 %192, %193
  br i1 %194, label %195, label %202

195:                                              ; preds = %184
  %196 = load i32, i32* @MM, align 4
  %197 = load i64, i64* %9, align 8
  %198 = load i64, i64* %12, align 8
  %199 = call i32 @ipath_cdbg(i32 %196, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %197, i64 %198)
  %200 = load i32, i32* @EINVAL, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %13, align 4
  br label %218

202:                                              ; preds = %184
  %203 = load i8*, i8** %11, align 8
  %204 = ptrtoint i8* %203 to i64
  %205 = load i64, i64* @PAGE_SHIFT, align 8
  %206 = lshr i64 %204, %205
  %207 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %208 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %207, i32 0, i32 3
  store i64 %206, i64* %208, align 8
  %209 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %210 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %209, i32 0, i32 4
  store i32* @ipath_file_vm_ops, i32** %210, align 8
  %211 = load i32, i32* @VM_RESERVED, align 4
  %212 = load i32, i32* @VM_DONTEXPAND, align 4
  %213 = or i32 %211, %212
  %214 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %215 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 8
  store i32 1, i32* %13, align 4
  br label %218

218:                                              ; preds = %202, %195, %178, %160, %18
  %219 = load i32, i32* %13, align 4
  ret i32 %219
}

declare dso_local i64 @cvt_kvaddr(i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @ipath_cdbg(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
