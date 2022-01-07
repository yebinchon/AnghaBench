; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_append_new_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_append_new_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_csr = type { i32, %struct.csr1212_csr_rom_cache*, i32, %struct.TYPE_7__*, i32 }
%struct.csr1212_csr_rom_cache = type { %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache*, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 (i64, i32, i32)*, i32 (i64, i32)* }

@CSR1212_INVALID_ADDR_SPACE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@CSR1212_REGISTER_SPACE_BASE = common dso_local global i64 0, align 8
@CSR1212_KV_TYPE_LEAF = common dso_local global i32 0, align 4
@CSR1212_KV_ID_EXTENDED_ROM = common dso_local global i32 0, align 4
@CSR1212_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csr1212_csr*, i64)* @csr1212_append_new_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csr1212_append_new_cache(%struct.csr1212_csr* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.csr1212_csr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.csr1212_csr_rom_cache*, align 8
  %7 = alloca i64, align 8
  store %struct.csr1212_csr* %0, %struct.csr1212_csr** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %9 = icmp ne %struct.csr1212_csr* %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %2
  %11 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %12 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %11, i32 0, i32 3
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %10
  %16 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %17 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %16, i32 0, i32 3
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64 (i64, i32, i32)*, i64 (i64, i32, i32)** %19, align 8
  %21 = icmp ne i64 (i64, i32, i32)* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %15
  %23 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %24 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %23, i32 0, i32 3
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32 (i64, i32)*, i32 (i64, i32)** %26, align 8
  %28 = icmp ne i32 (i64, i32)* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %31 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %32, 1
  br label %34

34:                                               ; preds = %29, %22, %15, %10, %2
  %35 = phi i1 [ true, %22 ], [ true, %15 ], [ true, %10 ], [ true, %2 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %40 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = add i64 %38, %43
  %45 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %46 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = xor i32 %48, -1
  %50 = sext i32 %49 to i64
  %51 = and i64 %44, %50
  store i64 %51, i64* %5, align 8
  %52 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %53 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %52, i32 0, i32 3
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64 (i64, i32, i32)*, i64 (i64, i32, i32)** %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %59 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %62 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i64 %56(i64 %57, i32 %60, i32 %63)
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @CSR1212_INVALID_ADDR_SPACE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %34
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %201

71:                                               ; preds = %34
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @CSR1212_REGISTER_SPACE_BASE, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %71
  %76 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %77 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %76, i32 0, i32 3
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32 (i64, i32)*, i32 (i64, i32)** %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %83 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 %80(i64 %81, i32 %84)
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %201

88:                                               ; preds = %71
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* @CSR1212_REGISTER_SPACE_BASE, align 8
  %91 = sub nsw i64 %89, %90
  %92 = load i64, i64* %5, align 8
  %93 = call %struct.csr1212_csr_rom_cache* @csr1212_rom_cache_malloc(i64 %91, i64 %92)
  store %struct.csr1212_csr_rom_cache* %93, %struct.csr1212_csr_rom_cache** %6, align 8
  %94 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %6, align 8
  %95 = icmp ne %struct.csr1212_csr_rom_cache* %94, null
  br i1 %95, label %109, label %96

96:                                               ; preds = %88
  %97 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %98 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %97, i32 0, i32 3
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i32 (i64, i32)*, i32 (i64, i32)** %100, align 8
  %102 = load i64, i64* %7, align 8
  %103 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %104 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 %101(i64 %102, i32 %105)
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %201

109:                                              ; preds = %88
  %110 = load i32, i32* @CSR1212_KV_TYPE_LEAF, align 4
  %111 = load i32, i32* @CSR1212_KV_ID_EXTENDED_ROM, align 4
  %112 = call %struct.TYPE_10__* @csr1212_new_keyval(i32 %110, i32 %111)
  %113 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %6, align 8
  %114 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %113, i32 0, i32 3
  store %struct.TYPE_10__* %112, %struct.TYPE_10__** %114, align 8
  %115 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %6, align 8
  %116 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %115, i32 0, i32 3
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = icmp ne %struct.TYPE_10__* %117, null
  br i1 %118, label %134, label %119

119:                                              ; preds = %109
  %120 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %121 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %120, i32 0, i32 3
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load i32 (i64, i32)*, i32 (i64, i32)** %123, align 8
  %125 = load i64, i64* %7, align 8
  %126 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %127 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 %124(i64 %125, i32 %128)
  %130 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %6, align 8
  %131 = call i32 @CSR1212_FREE(%struct.csr1212_csr_rom_cache* %130)
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  br label %201

134:                                              ; preds = %109
  %135 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %136 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %6, align 8
  %139 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %138, i32 0, i32 3
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = call i64 @csr1212_attach_keyval_to_directory(i32 %137, %struct.TYPE_10__* %140)
  %142 = load i64, i64* @CSR1212_SUCCESS, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %163

144:                                              ; preds = %134
  %145 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %6, align 8
  %146 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %145, i32 0, i32 3
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = call i32 @csr1212_release_keyval(%struct.TYPE_10__* %147)
  %149 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %150 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %149, i32 0, i32 3
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i32 (i64, i32)*, i32 (i64, i32)** %152, align 8
  %154 = load i64, i64* %7, align 8
  %155 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %156 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 %153(i64 %154, i32 %157)
  %159 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %6, align 8
  %160 = call i32 @CSR1212_FREE(%struct.csr1212_csr_rom_cache* %159)
  %161 = load i32, i32* @ENOMEM, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %3, align 4
  br label %201

163:                                              ; preds = %134
  %164 = load i64, i64* %7, align 8
  %165 = load i64, i64* @CSR1212_REGISTER_SPACE_BASE, align 8
  %166 = sub nsw i64 %164, %165
  %167 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %6, align 8
  %168 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %167, i32 0, i32 3
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 1
  store i64 %166, i64* %170, align 8
  %171 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %6, align 8
  %172 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %171, i32 0, i32 3
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  store i32 -1, i32* %176, align 8
  %177 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %6, align 8
  %178 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %6, align 8
  %181 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %180, i32 0, i32 3
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 1
  store i32 %179, i32* %185, align 4
  %186 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %187 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %186, i32 0, i32 1
  %188 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %187, align 8
  %189 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %6, align 8
  %190 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %189, i32 0, i32 1
  store %struct.csr1212_csr_rom_cache* %188, %struct.csr1212_csr_rom_cache** %190, align 8
  %191 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %6, align 8
  %192 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %193 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %192, i32 0, i32 1
  %194 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %193, align 8
  %195 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %194, i32 0, i32 0
  store %struct.csr1212_csr_rom_cache* %191, %struct.csr1212_csr_rom_cache** %195, align 8
  %196 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %6, align 8
  %197 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %198 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %197, i32 0, i32 1
  store %struct.csr1212_csr_rom_cache* %196, %struct.csr1212_csr_rom_cache** %198, align 8
  %199 = load i64, i64* @CSR1212_SUCCESS, align 8
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %3, align 4
  br label %201

201:                                              ; preds = %163, %144, %119, %96, %75, %68
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.csr1212_csr_rom_cache* @csr1212_rom_cache_malloc(i64, i64) #1

declare dso_local %struct.TYPE_10__* @csr1212_new_keyval(i32, i32) #1

declare dso_local i32 @CSR1212_FREE(%struct.csr1212_csr_rom_cache*) #1

declare dso_local i64 @csr1212_attach_keyval_to_directory(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @csr1212_release_keyval(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
