; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_uninorth-agp.c_uninorth_create_gatt_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_uninorth-agp.c_uninorth_create_gatt_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_bridge_data = type { i32, i64*, i32, i32*, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@LVL2_APER_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_KERNEL_NCG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.agp_bridge_data*)* @uninorth_create_gatt_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uninorth_create_gatt_table(%struct.agp_bridge_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.agp_bridge_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca %struct.page**, align 8
  store %struct.agp_bridge_data* %0, %struct.agp_bridge_data** %3, align 8
  %13 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %14 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %13, i32 0, i32 5
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LVL2_APER_SIZE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %178

23:                                               ; preds = %1
  store i8* null, i8** %4, align 8
  %24 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %25 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  %27 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %28 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %27, i32 0, i32 4
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %10, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %72, %23
  %31 = load i8*, i8** %10, align 8
  %32 = call %struct.TYPE_4__* @A_SIZE_32(i8* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = call %struct.TYPE_4__* @A_SIZE_32(i8* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = call %struct.TYPE_4__* @A_SIZE_32(i8* %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @__get_free_pages(i32 %43, i32 %44)
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %4, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %30
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  %52 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %53 = call i8* @A_IDX32(%struct.agp_bridge_data* %52)
  %54 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %55 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  br label %60

56:                                               ; preds = %30
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %59 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %56, %49
  br label %61

61:                                               ; preds = %60
  %62 = load i8*, i8** %4, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %67 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %66, i32 0, i32 5
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %65, %70
  br label %72

72:                                               ; preds = %64, %61
  %73 = phi i1 [ false, %61 ], [ %71, %64 ]
  br i1 %73, label %30, label %74

74:                                               ; preds = %72
  %75 = load i8*, i8** %4, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %178

80:                                               ; preds = %74
  %81 = load i32, i32* %7, align 4
  %82 = shl i32 1, %81
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 8
  %85 = trunc i64 %84 to i32
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call %struct.page** @kmalloc(i32 %85, i32 %86)
  store %struct.page** %87, %struct.page*** %12, align 8
  %88 = load %struct.page**, %struct.page*** %12, align 8
  %89 = icmp eq %struct.page** %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  br label %165

91:                                               ; preds = %80
  %92 = load i8*, i8** %4, align 8
  %93 = load i32, i32* @PAGE_SIZE, align 4
  %94 = load i32, i32* %7, align 4
  %95 = shl i32 1, %94
  %96 = mul nsw i32 %93, %95
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %92, i64 %98
  store i8* %99, i8** %5, align 8
  %100 = load i8*, i8** %4, align 8
  %101 = call %struct.page* @virt_to_page(i8* %100)
  store %struct.page* %101, %struct.page** %11, align 8
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %115, %91
  %103 = load %struct.page*, %struct.page** %11, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = call %struct.page* @virt_to_page(i8* %104)
  %106 = icmp ule %struct.page* %103, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %102
  %108 = load %struct.page*, %struct.page** %11, align 8
  %109 = call i32 @SetPageReserved(%struct.page* %108)
  %110 = load %struct.page*, %struct.page** %11, align 8
  %111 = load %struct.page**, %struct.page*** %12, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.page*, %struct.page** %111, i64 %113
  store %struct.page* %110, %struct.page** %114, align 8
  br label %115

115:                                              ; preds = %107
  %116 = load %struct.page*, %struct.page** %11, align 8
  %117 = getelementptr inbounds %struct.page, %struct.page* %116, i32 1
  store %struct.page* %117, %struct.page** %11, align 8
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %102

120:                                              ; preds = %102
  %121 = load i8*, i8** %4, align 8
  %122 = bitcast i8* %121 to i32*
  %123 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %124 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %123, i32 0, i32 3
  store i32* %122, i32** %124, align 8
  %125 = load i8*, i8** %4, align 8
  %126 = ptrtoint i8* %125 to i64
  %127 = load i8*, i8** %5, align 8
  %128 = load i32, i32* @PAGE_SIZE, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = ptrtoint i8* %130 to i64
  %132 = call i32 @flush_dcache_range(i64 %126, i64 %131)
  %133 = load %struct.page**, %struct.page*** %12, align 8
  %134 = load i32, i32* %7, align 4
  %135 = shl i32 1, %134
  %136 = load i32, i32* @PAGE_KERNEL_NCG, align 4
  %137 = call i64* @vmap(%struct.page** %133, i32 %135, i32 0, i32 %136)
  %138 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %139 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %138, i32 0, i32 1
  store i64* %137, i64** %139, align 8
  %140 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %141 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %140, i32 0, i32 1
  %142 = load i64*, i64** %141, align 8
  %143 = icmp eq i64* %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %120
  br label %165

145:                                              ; preds = %120
  %146 = load i8*, i8** %4, align 8
  %147 = call i32 @virt_to_phys(i8* %146)
  %148 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %149 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  store i32 0, i32* %9, align 4
  br label %150

150:                                              ; preds = %161, %145
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %164

154:                                              ; preds = %150
  %155 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %156 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %155, i32 0, i32 1
  %157 = load i64*, i64** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  store i64 0, i64* %160, align 8
  br label %161

161:                                              ; preds = %154
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %9, align 4
  br label %150

164:                                              ; preds = %150
  store i32 0, i32* %2, align 4
  br label %178

165:                                              ; preds = %144, %90
  %166 = load %struct.page**, %struct.page*** %12, align 8
  %167 = call i32 @kfree(%struct.page** %166)
  %168 = load i8*, i8** %4, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %175

170:                                              ; preds = %165
  %171 = load i8*, i8** %4, align 8
  %172 = ptrtoint i8* %171 to i64
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @free_pages(i64 %172, i32 %173)
  br label %175

175:                                              ; preds = %170, %165
  %176 = load i32, i32* @ENOMEM, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %2, align 4
  br label %178

178:                                              ; preds = %175, %164, %77, %20
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local %struct.TYPE_4__* @A_SIZE_32(i8*) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i8* @A_IDX32(%struct.agp_bridge_data*) #1

declare dso_local %struct.page** @kmalloc(i32, i32) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @SetPageReserved(%struct.page*) #1

declare dso_local i32 @flush_dcache_range(i64, i64) #1

declare dso_local i64* @vmap(%struct.page**, i32, i32, i32) #1

declare dso_local i32 @virt_to_phys(i8*) #1

declare dso_local i32 @kfree(%struct.page**) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
