; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_fill_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_fill_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_csr_rom_cache = type { i64, i64, %struct.TYPE_7__*, %struct.csr1212_keyval* }
%struct.TYPE_7__ = type { %struct.csr1212_keyval* }
%struct.csr1212_keyval = type { %struct.csr1212_keyval*, %struct.TYPE_12__*, %struct.TYPE_11__, %struct.TYPE_8__, i64 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.csr1212_keyval_img = type { i32, i8*, i8* }

@CSR1212_KV_ID_EXTENDED_ROM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csr1212_csr_rom_cache*)* @csr1212_fill_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csr1212_fill_cache(%struct.csr1212_csr_rom_cache* %0) #0 {
  %2 = alloca %struct.csr1212_csr_rom_cache*, align 8
  %3 = alloca %struct.csr1212_keyval*, align 8
  %4 = alloca %struct.csr1212_keyval*, align 8
  %5 = alloca %struct.csr1212_keyval_img*, align 8
  store %struct.csr1212_csr_rom_cache* %0, %struct.csr1212_csr_rom_cache** %2, align 8
  %6 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %2, align 8
  %7 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %6, i32 0, i32 3
  %8 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %7, align 8
  store %struct.csr1212_keyval* %8, %struct.csr1212_keyval** %3, align 8
  br label %9

9:                                                ; preds = %134, %1
  %10 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %11 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %2, align 8
  %12 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %11, i32 0, i32 2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %14, align 8
  %16 = icmp ne %struct.csr1212_keyval* %10, %15
  br i1 %16, label %17, label %136

17:                                               ; preds = %9
  %18 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %2, align 8
  %19 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %22 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %2, align 8
  %25 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  %28 = call i64 @bytes_to_quads(i64 %27)
  %29 = add nsw i64 %20, %28
  %30 = inttoptr i64 %29 to %struct.csr1212_keyval_img*
  store %struct.csr1212_keyval_img* %30, %struct.csr1212_keyval_img** %5, align 8
  %31 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %32 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %35 [
    i32 129, label %36
    i32 131, label %36
    i32 128, label %38
    i32 130, label %81
  ]

35:                                               ; preds = %17
  br label %36

36:                                               ; preds = %17, %17, %35
  %37 = call i32 @WARN_ON(i32 1)
  br label %106

38:                                               ; preds = %17
  %39 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %40 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CSR1212_KV_ID_EXTENDED_ROM, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %38
  %46 = load %struct.csr1212_keyval_img*, %struct.csr1212_keyval_img** %5, align 8
  %47 = getelementptr inbounds %struct.csr1212_keyval_img, %struct.csr1212_keyval_img* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %50 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %55 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @quads_to_bytes(i32 %58)
  %60 = call i32 @memcpy(i32 %48, i32 %53, i32 %59)
  br label %61

61:                                               ; preds = %45, %38
  %62 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %63 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @cpu_to_be16(i32 %66)
  %68 = load %struct.csr1212_keyval_img*, %struct.csr1212_keyval_img** %5, align 8
  %69 = getelementptr inbounds %struct.csr1212_keyval_img, %struct.csr1212_keyval_img* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load %struct.csr1212_keyval_img*, %struct.csr1212_keyval_img** %5, align 8
  %71 = getelementptr inbounds %struct.csr1212_keyval_img, %struct.csr1212_keyval_img* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %74 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @csr1212_crc16(i32 %72, i32 %77)
  %79 = load %struct.csr1212_keyval_img*, %struct.csr1212_keyval_img** %5, align 8
  %80 = getelementptr inbounds %struct.csr1212_keyval_img, %struct.csr1212_keyval_img* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  br label %106

81:                                               ; preds = %17
  %82 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %83 = load %struct.csr1212_keyval_img*, %struct.csr1212_keyval_img** %5, align 8
  %84 = getelementptr inbounds %struct.csr1212_keyval_img, %struct.csr1212_keyval_img* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @csr1212_generate_tree_subdir(%struct.csr1212_keyval* %82, i32 %85)
  %87 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %88 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i8* @cpu_to_be16(i32 %91)
  %93 = load %struct.csr1212_keyval_img*, %struct.csr1212_keyval_img** %5, align 8
  %94 = getelementptr inbounds %struct.csr1212_keyval_img, %struct.csr1212_keyval_img* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  %95 = load %struct.csr1212_keyval_img*, %struct.csr1212_keyval_img** %5, align 8
  %96 = getelementptr inbounds %struct.csr1212_keyval_img, %struct.csr1212_keyval_img* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %99 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i8* @csr1212_crc16(i32 %97, i32 %102)
  %104 = load %struct.csr1212_keyval_img*, %struct.csr1212_keyval_img** %5, align 8
  %105 = getelementptr inbounds %struct.csr1212_keyval_img, %struct.csr1212_keyval_img* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %81, %61, %36
  %107 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %108 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %107, i32 0, i32 0
  %109 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %108, align 8
  store %struct.csr1212_keyval* %109, %struct.csr1212_keyval** %4, align 8
  %110 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %111 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %110, i32 0, i32 1
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = icmp ne %struct.TYPE_12__* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %106
  %115 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %116 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %115, i32 0, i32 1
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  store i32* null, i32** %118, align 8
  br label %119

119:                                              ; preds = %114, %106
  %120 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %121 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %120, i32 0, i32 0
  %122 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %121, align 8
  %123 = icmp ne %struct.csr1212_keyval* %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %126 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %125, i32 0, i32 0
  %127 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %126, align 8
  %128 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %127, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %128, align 8
  br label %129

129:                                              ; preds = %124, %119
  %130 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %131 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %130, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %131, align 8
  %132 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %133 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %132, i32 0, i32 0
  store %struct.csr1212_keyval* null, %struct.csr1212_keyval** %133, align 8
  br label %134

134:                                              ; preds = %129
  %135 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  store %struct.csr1212_keyval* %135, %struct.csr1212_keyval** %3, align 8
  br label %9

136:                                              ; preds = %9
  ret void
}

declare dso_local i64 @bytes_to_quads(i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @quads_to_bytes(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i8* @csr1212_crc16(i32, i32) #1

declare dso_local i32 @csr1212_generate_tree_subdir(%struct.csr1212_keyval*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
