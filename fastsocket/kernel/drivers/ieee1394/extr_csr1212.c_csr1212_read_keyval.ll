; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_read_keyval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_read_keyval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_csr = type { i32, i32, %struct.TYPE_6__*, %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache* }
%struct.TYPE_6__ = type { i64 (%struct.csr1212_csr*, i32, i32*, i32)* }
%struct.csr1212_csr_rom_cache = type { i32, i32, i32*, %struct.csr1212_cache_region*, %struct.csr1212_cache_region*, %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache* }
%struct.csr1212_cache_region = type { i32, i32, %struct.csr1212_cache_region*, %struct.csr1212_cache_region* }
%struct.csr1212_keyval = type { i32, %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_5__ = type { i64 }
%struct.csr1212_keyval_img = type { i32 }

@CSR1212_KV_ID_EXTENDED_ROM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CSR1212_REGISTER_SPACE_BASE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CSR1212_CSR_ARCH_REG_SPACE_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csr1212_csr*, %struct.csr1212_keyval*)* @csr1212_read_keyval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csr1212_read_keyval(%struct.csr1212_csr* %0, %struct.csr1212_keyval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.csr1212_csr*, align 8
  %5 = alloca %struct.csr1212_keyval*, align 8
  %6 = alloca %struct.csr1212_cache_region*, align 8
  %7 = alloca %struct.csr1212_cache_region*, align 8
  %8 = alloca %struct.csr1212_cache_region*, align 8
  %9 = alloca %struct.csr1212_keyval_img*, align 8
  %10 = alloca %struct.csr1212_csr_rom_cache*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.csr1212_csr* %0, %struct.csr1212_csr** %4, align 8
  store %struct.csr1212_keyval* %1, %struct.csr1212_keyval** %5, align 8
  store %struct.csr1212_cache_region* null, %struct.csr1212_cache_region** %8, align 8
  store %struct.csr1212_keyval_img* null, %struct.csr1212_keyval_img** %9, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %18 = icmp ne %struct.csr1212_csr* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %21 = icmp ne %struct.csr1212_keyval* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %24 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %25, 1
  br label %27

27:                                               ; preds = %22, %19, %2
  %28 = phi i1 [ true, %19 ], [ true, %2 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %32 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %31, i32 0, i32 4
  %33 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %32, align 8
  store %struct.csr1212_csr_rom_cache* %33, %struct.csr1212_csr_rom_cache** %10, align 8
  br label %34

34:                                               ; preds = %59, %27
  %35 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %36 = icmp ne %struct.csr1212_csr_rom_cache* %35, null
  br i1 %36, label %37, label %63

37:                                               ; preds = %34
  %38 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %39 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %42 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sge i32 %40, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %37
  %46 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %47 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %50 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %53 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %51, %54
  %56 = icmp slt i32 %48, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %63

58:                                               ; preds = %45, %37
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %61 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %60, i32 0, i32 5
  %62 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %61, align 8
  store %struct.csr1212_csr_rom_cache* %62, %struct.csr1212_csr_rom_cache** %10, align 8
  br label %34

63:                                               ; preds = %57, %34
  %64 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %65 = icmp ne %struct.csr1212_csr_rom_cache* %64, null
  br i1 %65, label %197, label %66

66:                                               ; preds = %63
  %67 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %68 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CSR1212_KV_ID_EXTENDED_ROM, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %508

76:                                               ; preds = %66
  %77 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %78 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %77, i32 0, i32 2
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64 (%struct.csr1212_csr*, i32, i32*, i32)*, i64 (%struct.csr1212_csr*, i32, i32*, i32)** %80, align 8
  %82 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %83 = load i32, i32* @CSR1212_REGISTER_SPACE_BASE, align 4
  %84 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %85 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %83, %86
  %88 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %89 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 %81(%struct.csr1212_csr* %82, i32 %87, i32* %15, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %76
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %508

96:                                               ; preds = %76
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @be32_to_cpu(i32 %97)
  %99 = ashr i32 %98, 16
  %100 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %101 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  store i32 %99, i32* %103, align 8
  %104 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %105 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  %110 = call i32 @quads_to_bytes(i32 %109)
  %111 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %112 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 %113, 1
  %115 = add nsw i32 %110, %114
  %116 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %117 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %118, 1
  %120 = xor i32 %119, -1
  %121 = and i32 %115, %120
  store i32 %121, i32* %16, align 4
  %122 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %123 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %16, align 4
  %126 = call %struct.csr1212_csr_rom_cache* @csr1212_rom_cache_malloc(i32 %124, i32 %125)
  store %struct.csr1212_csr_rom_cache* %126, %struct.csr1212_csr_rom_cache** %10, align 8
  %127 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %128 = icmp ne %struct.csr1212_csr_rom_cache* %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %96
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %508

132:                                              ; preds = %96
  %133 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %134 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %138 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  store i32* %136, i32** %140, align 8
  %141 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %142 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %143 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %142, i32 0, i32 3
  %144 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %143, align 8
  %145 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %144, i32 0, i32 5
  store %struct.csr1212_csr_rom_cache* %141, %struct.csr1212_csr_rom_cache** %145, align 8
  %146 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %147 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %146, i32 0, i32 3
  %148 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %147, align 8
  %149 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %150 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %149, i32 0, i32 6
  store %struct.csr1212_csr_rom_cache* %148, %struct.csr1212_csr_rom_cache** %150, align 8
  %151 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %152 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %151, i32 0, i32 5
  store %struct.csr1212_csr_rom_cache* null, %struct.csr1212_csr_rom_cache** %152, align 8
  %153 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %154 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %155 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %154, i32 0, i32 3
  store %struct.csr1212_csr_rom_cache* %153, %struct.csr1212_csr_rom_cache** %155, align 8
  %156 = call i8* @CSR1212_MALLOC(i32 24)
  %157 = bitcast i8* %156 to %struct.csr1212_cache_region*
  %158 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %159 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %158, i32 0, i32 3
  store %struct.csr1212_cache_region* %157, %struct.csr1212_cache_region** %159, align 8
  %160 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %161 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %160, i32 0, i32 3
  %162 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %161, align 8
  %163 = icmp ne %struct.csr1212_cache_region* %162, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %132
  %165 = load i32, i32* @ENOMEM, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %3, align 4
  br label %508

167:                                              ; preds = %132
  %168 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %169 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %168, i32 0, i32 3
  %170 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %169, align 8
  %171 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %170, i32 0, i32 0
  store i32 0, i32* %171, align 8
  %172 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %173 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %172, i32 0, i32 3
  %174 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %173, align 8
  %175 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %174, i32 0, i32 1
  store i32 4, i32* %175, align 4
  %176 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %177 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %176, i32 0, i32 3
  %178 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %177, align 8
  %179 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %180 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %179, i32 0, i32 4
  store %struct.csr1212_cache_region* %178, %struct.csr1212_cache_region** %180, align 8
  %181 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %182 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %181, i32 0, i32 3
  %183 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %182, align 8
  %184 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %183, i32 0, i32 3
  store %struct.csr1212_cache_region* null, %struct.csr1212_cache_region** %184, align 8
  %185 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %186 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %185, i32 0, i32 3
  %187 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %186, align 8
  %188 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %187, i32 0, i32 2
  store %struct.csr1212_cache_region* null, %struct.csr1212_cache_region** %188, align 8
  %189 = load i32, i32* %15, align 4
  %190 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %191 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  store i32 %189, i32* %193, align 4
  %194 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %195 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %196 = call i32 @csr1212_parse_keyval(%struct.csr1212_keyval* %194, %struct.csr1212_csr_rom_cache* %195)
  store i32 %196, i32* %3, align 4
  br label %508

197:                                              ; preds = %63
  %198 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %199 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %202 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = sub nsw i32 %200, %203
  store i32 %204, i32* %11, align 4
  %205 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %206 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %205, i32 0, i32 3
  %207 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %206, align 8
  store %struct.csr1212_cache_region* %207, %struct.csr1212_cache_region** %6, align 8
  br label %208

208:                                              ; preds = %288, %197
  %209 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %210 = icmp ne %struct.csr1212_cache_region* %209, null
  br i1 %210, label %211, label %292

211:                                              ; preds = %208
  %212 = load i32, i32* %11, align 4
  %213 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %214 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp slt i32 %212, %215
  br i1 %216, label %217, label %252

217:                                              ; preds = %211
  %218 = call i8* @CSR1212_MALLOC(i32 24)
  %219 = bitcast i8* %218 to %struct.csr1212_cache_region*
  store %struct.csr1212_cache_region* %219, %struct.csr1212_cache_region** %8, align 8
  %220 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %8, align 8
  %221 = icmp ne %struct.csr1212_cache_region* %220, null
  br i1 %221, label %225, label %222

222:                                              ; preds = %217
  %223 = load i32, i32* @ENOMEM, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %3, align 4
  br label %508

225:                                              ; preds = %217
  %226 = load i32, i32* %11, align 4
  %227 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %228 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = sub nsw i32 %229, 1
  %231 = xor i32 %230, -1
  %232 = and i32 %226, %231
  %233 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %8, align 8
  %234 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 8
  %235 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %8, align 8
  %236 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %8, align 8
  %239 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 4
  %240 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %241 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %8, align 8
  %242 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %241, i32 0, i32 3
  store %struct.csr1212_cache_region* %240, %struct.csr1212_cache_region** %242, align 8
  %243 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %244 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %243, i32 0, i32 2
  %245 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %244, align 8
  %246 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %8, align 8
  %247 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %246, i32 0, i32 2
  store %struct.csr1212_cache_region* %245, %struct.csr1212_cache_region** %247, align 8
  %248 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %8, align 8
  %249 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %250 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %249, i32 0, i32 2
  store %struct.csr1212_cache_region* %248, %struct.csr1212_cache_region** %250, align 8
  %251 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %8, align 8
  store %struct.csr1212_cache_region* %251, %struct.csr1212_cache_region** %6, align 8
  br label %292

252:                                              ; preds = %211
  %253 = load i32, i32* %11, align 4
  %254 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %255 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = icmp sge i32 %253, %256
  br i1 %257, label %258, label %278

258:                                              ; preds = %252
  %259 = load i32, i32* %11, align 4
  %260 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %261 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = icmp slt i32 %259, %262
  br i1 %263, label %264, label %278

264:                                              ; preds = %258
  %265 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %266 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %265, i32 0, i32 2
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %11, align 4
  %269 = call i64 @bytes_to_quads(i32 %268)
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = bitcast i32* %270 to %struct.csr1212_keyval_img*
  store %struct.csr1212_keyval_img* %271, %struct.csr1212_keyval_img** %9, align 8
  %272 = load %struct.csr1212_keyval_img*, %struct.csr1212_keyval_img** %9, align 8
  %273 = getelementptr inbounds %struct.csr1212_keyval_img, %struct.csr1212_keyval_img* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @be16_to_cpu(i32 %274)
  %276 = add nsw i32 %275, 1
  %277 = call i32 @quads_to_bytes(i32 %276)
  store i32 %277, i32* %14, align 4
  br label %292

278:                                              ; preds = %258, %252
  %279 = load i32, i32* %11, align 4
  %280 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %281 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = icmp eq i32 %279, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %278
  br label %292

285:                                              ; preds = %278
  br label %286

286:                                              ; preds = %285
  br label %287

287:                                              ; preds = %286
  br label %288

288:                                              ; preds = %287
  %289 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %290 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %289, i32 0, i32 3
  %291 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %290, align 8
  store %struct.csr1212_cache_region* %291, %struct.csr1212_cache_region** %6, align 8
  br label %208

292:                                              ; preds = %284, %264, %225, %208
  %293 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %294 = icmp ne %struct.csr1212_cache_region* %293, null
  br i1 %294, label %336, label %295

295:                                              ; preds = %292
  %296 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %297 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %296, i32 0, i32 4
  %298 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %297, align 8
  store %struct.csr1212_cache_region* %298, %struct.csr1212_cache_region** %6, align 8
  %299 = call i8* @CSR1212_MALLOC(i32 24)
  %300 = bitcast i8* %299 to %struct.csr1212_cache_region*
  store %struct.csr1212_cache_region* %300, %struct.csr1212_cache_region** %8, align 8
  %301 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %8, align 8
  %302 = icmp ne %struct.csr1212_cache_region* %301, null
  br i1 %302, label %306, label %303

303:                                              ; preds = %295
  %304 = load i32, i32* @ENOMEM, align 4
  %305 = sub nsw i32 0, %304
  store i32 %305, i32* %3, align 4
  br label %508

306:                                              ; preds = %295
  %307 = load i32, i32* %11, align 4
  %308 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %309 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = sub nsw i32 %310, 1
  %312 = xor i32 %311, -1
  %313 = and i32 %307, %312
  %314 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %8, align 8
  %315 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %314, i32 0, i32 0
  store i32 %313, i32* %315, align 8
  %316 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %8, align 8
  %317 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %8, align 8
  %320 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %319, i32 0, i32 1
  store i32 %318, i32* %320, align 4
  %321 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %322 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %8, align 8
  %323 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %322, i32 0, i32 2
  store %struct.csr1212_cache_region* %321, %struct.csr1212_cache_region** %323, align 8
  %324 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %325 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %324, i32 0, i32 3
  %326 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %325, align 8
  %327 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %8, align 8
  %328 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %327, i32 0, i32 3
  store %struct.csr1212_cache_region* %326, %struct.csr1212_cache_region** %328, align 8
  %329 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %8, align 8
  %330 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %331 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %330, i32 0, i32 3
  store %struct.csr1212_cache_region* %329, %struct.csr1212_cache_region** %331, align 8
  %332 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %8, align 8
  store %struct.csr1212_cache_region* %332, %struct.csr1212_cache_region** %6, align 8
  %333 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %8, align 8
  %334 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %335 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %334, i32 0, i32 4
  store %struct.csr1212_cache_region* %333, %struct.csr1212_cache_region** %335, align 8
  br label %336

336:                                              ; preds = %306, %292
  br label %337

337:                                              ; preds = %503, %336
  %338 = load %struct.csr1212_keyval_img*, %struct.csr1212_keyval_img** %9, align 8
  %339 = icmp ne %struct.csr1212_keyval_img* %338, null
  br i1 %339, label %340, label %348

340:                                              ; preds = %337
  %341 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %342 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* %11, align 4
  %345 = load i32, i32* %14, align 4
  %346 = add nsw i32 %344, %345
  %347 = icmp slt i32 %343, %346
  br label %348

348:                                              ; preds = %340, %337
  %349 = phi i1 [ true, %337 ], [ %347, %340 ]
  br i1 %349, label %350, label %504

350:                                              ; preds = %348
  %351 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %352 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %351, i32 0, i32 2
  %353 = load i32*, i32** %352, align 8
  %354 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %355 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %358 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = sub nsw i32 %359, 1
  %361 = xor i32 %360, -1
  %362 = and i32 %356, %361
  %363 = call i64 @bytes_to_quads(i32 %362)
  %364 = getelementptr inbounds i32, i32* %353, i64 %363
  store i32* %364, i32** %13, align 8
  %365 = load i32, i32* @CSR1212_CSR_ARCH_REG_SPACE_BASE, align 4
  %366 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %367 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = add nsw i32 %365, %368
  %370 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %371 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = add nsw i32 %369, %372
  %374 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %375 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = sub nsw i32 %376, 1
  %378 = xor i32 %377, -1
  %379 = and i32 %373, %378
  store i32 %379, i32* %12, align 4
  %380 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %381 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %380, i32 0, i32 2
  %382 = load %struct.TYPE_6__*, %struct.TYPE_6__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %382, i32 0, i32 0
  %384 = load i64 (%struct.csr1212_csr*, i32, i32*, i32)*, i64 (%struct.csr1212_csr*, i32, i32*, i32)** %383, align 8
  %385 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %386 = load i32, i32* %12, align 4
  %387 = load i32*, i32** %13, align 8
  %388 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %389 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = call i64 %384(%struct.csr1212_csr* %385, i32 %386, i32* %387, i32 %390)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %396

393:                                              ; preds = %350
  %394 = load i32, i32* @EIO, align 4
  %395 = sub nsw i32 0, %394
  store i32 %395, i32* %3, align 4
  br label %508

396:                                              ; preds = %350
  %397 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %398 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %401 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.csr1212_csr*, %struct.csr1212_csr** %4, align 8
  %404 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = sub nsw i32 %405, 1
  %407 = and i32 %402, %406
  %408 = sub nsw i32 %399, %407
  %409 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %410 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = add nsw i32 %411, %408
  store i32 %412, i32* %410, align 4
  %413 = load %struct.csr1212_keyval_img*, %struct.csr1212_keyval_img** %9, align 8
  %414 = icmp ne %struct.csr1212_keyval_img* %413, null
  br i1 %414, label %435, label %415

415:                                              ; preds = %396
  %416 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %417 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = load i32, i32* %11, align 4
  %420 = icmp sgt i32 %418, %419
  br i1 %420, label %421, label %435

421:                                              ; preds = %415
  %422 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %423 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %422, i32 0, i32 2
  %424 = load i32*, i32** %423, align 8
  %425 = load i32, i32* %11, align 4
  %426 = call i64 @bytes_to_quads(i32 %425)
  %427 = getelementptr inbounds i32, i32* %424, i64 %426
  %428 = bitcast i32* %427 to %struct.csr1212_keyval_img*
  store %struct.csr1212_keyval_img* %428, %struct.csr1212_keyval_img** %9, align 8
  %429 = load %struct.csr1212_keyval_img*, %struct.csr1212_keyval_img** %9, align 8
  %430 = getelementptr inbounds %struct.csr1212_keyval_img, %struct.csr1212_keyval_img* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 4
  %432 = call i32 @be16_to_cpu(i32 %431)
  %433 = add nsw i32 %432, 1
  %434 = call i32 @quads_to_bytes(i32 %433)
  store i32 %434, i32* %14, align 4
  br label %435

435:                                              ; preds = %421, %415, %396
  %436 = load i32, i32* %14, align 4
  %437 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %438 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %441 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = sub nsw i32 %439, %442
  %444 = add nsw i32 %436, %443
  %445 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %446 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 4
  %448 = icmp sgt i32 %444, %447
  br i1 %448, label %449, label %452

449:                                              ; preds = %435
  %450 = load i32, i32* @EIO, align 4
  %451 = sub nsw i32 0, %450
  store i32 %451, i32* %3, align 4
  br label %508

452:                                              ; preds = %435
  %453 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %454 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %453, i32 0, i32 3
  %455 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %454, align 8
  store %struct.csr1212_cache_region* %455, %struct.csr1212_cache_region** %7, align 8
  %456 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %7, align 8
  %457 = icmp ne %struct.csr1212_cache_region* %456, null
  br i1 %457, label %458, label %503

458:                                              ; preds = %452
  %459 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %460 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 4
  %462 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %7, align 8
  %463 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 8
  %465 = icmp sge i32 %461, %464
  br i1 %465, label %466, label %503

466:                                              ; preds = %458
  %467 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %468 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %7, align 8
  %471 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %470, i32 0, i32 0
  store i32 %469, i32* %471, align 8
  %472 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %473 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %472, i32 0, i32 2
  %474 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %473, align 8
  %475 = icmp ne %struct.csr1212_cache_region* %474, null
  br i1 %475, label %476, label %484

476:                                              ; preds = %466
  %477 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %478 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %477, i32 0, i32 3
  %479 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %478, align 8
  %480 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %481 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %480, i32 0, i32 2
  %482 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %481, align 8
  %483 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %482, i32 0, i32 3
  store %struct.csr1212_cache_region* %479, %struct.csr1212_cache_region** %483, align 8
  br label %484

484:                                              ; preds = %476, %466
  %485 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %486 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %485, i32 0, i32 2
  %487 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %486, align 8
  %488 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %7, align 8
  %489 = getelementptr inbounds %struct.csr1212_cache_region, %struct.csr1212_cache_region* %488, i32 0, i32 2
  store %struct.csr1212_cache_region* %487, %struct.csr1212_cache_region** %489, align 8
  %490 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %491 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %490, i32 0, i32 3
  %492 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %491, align 8
  %493 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %494 = icmp eq %struct.csr1212_cache_region* %492, %493
  br i1 %494, label %495, label %499

495:                                              ; preds = %484
  %496 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %7, align 8
  %497 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %498 = getelementptr inbounds %struct.csr1212_csr_rom_cache, %struct.csr1212_csr_rom_cache* %497, i32 0, i32 3
  store %struct.csr1212_cache_region* %496, %struct.csr1212_cache_region** %498, align 8
  br label %499

499:                                              ; preds = %495, %484
  %500 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %6, align 8
  %501 = call i32 @CSR1212_FREE(%struct.csr1212_cache_region* %500)
  %502 = load %struct.csr1212_cache_region*, %struct.csr1212_cache_region** %7, align 8
  store %struct.csr1212_cache_region* %502, %struct.csr1212_cache_region** %6, align 8
  br label %503

503:                                              ; preds = %499, %458, %452
  br label %337

504:                                              ; preds = %348
  %505 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %506 = load %struct.csr1212_csr_rom_cache*, %struct.csr1212_csr_rom_cache** %10, align 8
  %507 = call i32 @csr1212_parse_keyval(%struct.csr1212_keyval* %505, %struct.csr1212_csr_rom_cache* %506)
  store i32 %507, i32* %3, align 4
  br label %508

508:                                              ; preds = %504, %449, %393, %303, %222, %167, %164, %129, %93, %73
  %509 = load i32, i32* %3, align 4
  ret i32 %509
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @quads_to_bytes(i32) #1

declare dso_local %struct.csr1212_csr_rom_cache* @csr1212_rom_cache_malloc(i32, i32) #1

declare dso_local i8* @CSR1212_MALLOC(i32) #1

declare dso_local i32 @csr1212_parse_keyval(%struct.csr1212_keyval*, %struct.csr1212_csr_rom_cache*) #1

declare dso_local i64 @bytes_to_quads(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @CSR1212_FREE(%struct.csr1212_cache_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
