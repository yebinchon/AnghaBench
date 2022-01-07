; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_parse_keyval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_parse_keyval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_keyval = type { i64, i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.csr1212_csr_rom_cache = type { i64, i32* }
%struct.csr1212_keyval_img = type { i32*, i32, i32 }

@CSR1212_SUCCESS = common dso_local global i32 0, align 4
@CSR1212_KV_ID_EXTENDED_ROM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csr1212_parse_keyval(%struct.csr1212_keyval* %0, %struct.csr1212_csr_rom_cache* %1) #0 {
  %3 = alloca %struct.csr1212_keyval*, align 8
  %4 = alloca %struct.csr1212_csr_rom_cache*, align 8
  %5 = alloca %struct.csr1212_keyval_img*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.csr1212_keyval* %0, %struct.csr1212_keyval** %3, align 8
  store %struct.csr1212_csr_rom_cache* %1, %struct.csr1212_csr_rom_cache** %4, align 8
  %11 = load i32, i32* @CSR1212_SUCCESS, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %4, align 8
  %13 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %16 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %4, align 8
  %19 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub i64 %17, %20
  %22 = call i64 @bytes_to_quads(i64 %21)
  %23 = getelementptr inbounds i32, i32* %14, i64 %22
  %24 = bitcast i32* %23 to %struct.csr1212_keyval_img*
  store %struct.csr1212_keyval_img* %24, %struct.csr1212_keyval_img** %5, align 8
  %25 = load %struct.csr1212_keyval_img*, %struct.csr1212_keyval_img** %5, align 8
  %26 = getelementptr inbounds %struct.csr1212_keyval_img, %struct.csr1212_keyval_img* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @be16_to_cpu(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.csr1212_keyval_img*, %struct.csr1212_keyval_img** %5, align 8
  %30 = getelementptr inbounds %struct.csr1212_keyval_img, %struct.csr1212_keyval_img* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.csr1212_keyval_img*, %struct.csr1212_keyval_img** %5, align 8
  %34 = getelementptr inbounds %struct.csr1212_keyval_img, %struct.csr1212_keyval_img* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %4, align 8
  %37 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = call i32 @csr1212_check_crc(i32* %31, i32 %32, i32 %35, i32* %39)
  %41 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %42 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %123 [
    i32 129, label %45
    i32 128, label %81
  ]

45:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %72, %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %75

50:                                               ; preds = %46
  %51 = load %struct.csr1212_keyval_img*, %struct.csr1212_keyval_img** %5, align 8
  %52 = getelementptr inbounds %struct.csr1212_keyval_img, %struct.csr1212_keyval_img* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %72

61:                                               ; preds = %50
  %62 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %65 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  %69 = call i64 @quads_to_bytes(i32 %68)
  %70 = add i64 %66, %69
  %71 = call i32 @csr1212_parse_dir_entry(%struct.csr1212_keyval* %62, i32 %63, i64 %70)
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %61, %60
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %46

75:                                               ; preds = %46
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %78 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 4
  br label %123

81:                                               ; preds = %2
  %82 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %83 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @CSR1212_KV_ID_EXTENDED_ROM, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %122

88:                                               ; preds = %81
  %89 = load i32, i32* %8, align 4
  %90 = call i64 @quads_to_bytes(i32 %89)
  store i64 %90, i64* %10, align 8
  %91 = load i64, i64* %10, align 8
  %92 = call i32 @CSR1212_MALLOC(i64 %91)
  %93 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %94 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  store i32 %92, i32* %96, align 4
  %97 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %98 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %88
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %7, align 4
  br label %126

106:                                              ; preds = %88
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %109 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  store i32 %107, i32* %111, align 4
  %112 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %113 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.csr1212_keyval_img*, %struct.csr1212_keyval_img** %5, align 8
  %118 = getelementptr inbounds %struct.csr1212_keyval_img, %struct.csr1212_keyval_img* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* %10, align 8
  %121 = call i32 @memcpy(i32 %116, i32* %119, i64 %120)
  br label %122

122:                                              ; preds = %106, %81
  br label %123

123:                                              ; preds = %2, %122, %75
  %124 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %125 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %124, i32 0, i32 1
  store i32 1, i32* %125, align 8
  br label %126

126:                                              ; preds = %123, %103
  %127 = load i32, i32* %7, align 4
  ret i32 %127
}

declare dso_local i64 @bytes_to_quads(i64) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @csr1212_check_crc(i32*, i32, i32, i32*) #1

declare dso_local i32 @csr1212_parse_dir_entry(%struct.csr1212_keyval*, i32, i64) #1

declare dso_local i64 @quads_to_bytes(i32) #1

declare dso_local i32 @CSR1212_MALLOC(i64) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
