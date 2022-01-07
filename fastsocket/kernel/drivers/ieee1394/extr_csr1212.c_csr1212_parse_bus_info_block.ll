; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_parse_bus_info_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_parse_bus_info_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_csr = type { i32, i32, %struct.TYPE_4__*, i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.csr1212_cache_region*, %struct.csr1212_cache_region*, i32* }
%struct.csr1212_cache_region = type { i32, i64, i32*, i32* }
%struct.TYPE_3__ = type { i32 (%struct.csr1212_csr*, i64, i32*, i32)* }
%struct.csr1212_bus_info_block_img = type { i32, i32, i32 }

@CSR1212_CONFIG_ROM_SPACE_BASE = common dso_local global i64 0, align 8
@CSR1212_SUCCESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csr1212_csr*)* @csr1212_parse_bus_info_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csr1212_parse_bus_info_block(%struct.csr1212_csr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csr1212_csr*, align 8
  %4 = alloca %struct.csr1212_bus_info_block_img*, align 8
  %5 = alloca %struct.csr1212_cache_region*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.csr1212_csr* %0, %struct.csr1212_csr** %3, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %66, %1
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %11 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %71

14:                                               ; preds = %8
  %15 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %16 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %15, i32 0, i32 5
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.csr1212_csr*, i64, i32*, i32)*, i32 (%struct.csr1212_csr*, i64, i32*, i32)** %18, align 8
  %20 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %21 = load i64, i64* @CSR1212_CONFIG_ROM_SPACE_BASE, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %26 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @bytes_to_quads(i32 %30)
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %34 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %19(%struct.csr1212_csr* %20, i64 %24, i32* %32, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @CSR1212_SUCCESS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %14
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %172

42:                                               ; preds = %14
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %42
  %46 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %47 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @be32_to_cpu(i32 %52)
  %54 = ashr i32 %53, 24
  %55 = sext i32 %54 to i64
  %56 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %57 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @bytes_to_quads(i32 %58)
  %60 = sub i64 %59, 1
  %61 = icmp ne i64 %55, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %45
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %172

65:                                               ; preds = %45, %42
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = add i64 %68, 4
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %6, align 4
  br label %8

71:                                               ; preds = %8
  %72 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %73 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = bitcast i32* %76 to %struct.csr1212_bus_info_block_img*
  store %struct.csr1212_bus_info_block_img* %77, %struct.csr1212_bus_info_block_img** %4, align 8
  %78 = load %struct.csr1212_bus_info_block_img*, %struct.csr1212_bus_info_block_img** %4, align 8
  %79 = getelementptr inbounds %struct.csr1212_bus_info_block_img, %struct.csr1212_bus_info_block_img* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @quads_to_bytes(i32 %80)
  %82 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %83 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %85 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %122, %71
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %90 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp sle i32 %88, %91
  br i1 %92, label %93, label %127

93:                                               ; preds = %87
  %94 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %95 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %94, i32 0, i32 5
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32 (%struct.csr1212_csr*, i64, i32*, i32)*, i32 (%struct.csr1212_csr*, i64, i32*, i32)** %97, align 8
  %99 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %100 = load i64, i64* @CSR1212_CONFIG_ROM_SPACE_BASE, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %100, %102
  %104 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %105 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %104, i32 0, i32 2
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i64 @bytes_to_quads(i32 %109)
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %113 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = call i32 %98(%struct.csr1212_csr* %99, i64 %103, i32* %111, i32 %114)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @CSR1212_SUCCESS, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %93
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* %2, align 4
  br label %172

121:                                              ; preds = %93
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = add i64 %124, 4
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %6, align 4
  br label %87

127:                                              ; preds = %87
  %128 = load %struct.csr1212_bus_info_block_img*, %struct.csr1212_bus_info_block_img** %4, align 8
  %129 = getelementptr inbounds %struct.csr1212_bus_info_block_img, %struct.csr1212_bus_info_block_img* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.csr1212_bus_info_block_img*, %struct.csr1212_bus_info_block_img** %4, align 8
  %132 = getelementptr inbounds %struct.csr1212_bus_info_block_img, %struct.csr1212_bus_info_block_img* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.csr1212_bus_info_block_img*, %struct.csr1212_bus_info_block_img** %4, align 8
  %135 = getelementptr inbounds %struct.csr1212_bus_info_block_img, %struct.csr1212_bus_info_block_img* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %138 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 3
  %141 = call i32 @csr1212_check_crc(i32 %130, i32 %133, i32 %136, i32* %140)
  %142 = call %struct.csr1212_cache_region* @CSR1212_MALLOC(i32 32)
  store %struct.csr1212_cache_region* %142, %struct.csr1212_cache_region** %5, align 8
  %143 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %5, align 8
  %144 = icmp ne %struct.csr1212_cache_region* %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %127
  %146 = load i32, i32* @ENOMEM, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %2, align 4
  br label %172

148:                                              ; preds = %127
  %149 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %5, align 8
  %150 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %149, i32 0, i32 3
  store i32* null, i32** %150, align 8
  %151 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %5, align 8
  %152 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %151, i32 0, i32 2
  store i32* null, i32** %152, align 8
  %153 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %5, align 8
  %154 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %153, i32 0, i32 1
  store i64 0, i64* %154, align 8
  %155 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %156 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 4
  %159 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %5, align 8
  %160 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  %161 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %5, align 8
  %162 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %163 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %162, i32 0, i32 2
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  store %struct.csr1212_cache_region* %161, %struct.csr1212_cache_region** %165, align 8
  %166 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %5, align 8
  %167 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %168 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %167, i32 0, i32 2
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  store %struct.csr1212_cache_region* %166, %struct.csr1212_cache_region** %170, align 8
  %171 = load i32, i32* @CSR1212_SUCCESS, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %148, %145, %119, %62, %40
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i64 @bytes_to_quads(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @quads_to_bytes(i32) #1

declare dso_local i32 @csr1212_check_crc(i32, i32, i32, i32*) #1

declare dso_local %struct.csr1212_cache_region* @CSR1212_MALLOC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
