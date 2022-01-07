; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_traps.c_set_vi_srs_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_traps.c_set_vi_srs_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@vi_handlers = common dso_local global i64* null, align 8
@current_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@cpu_has_veic = common dso_local global i64 0, align 8
@cpu_has_vint = common dso_local global i64 0, align 8
@do_default_vi = common dso_local global i64 0, align 8
@ebase = common dso_local global i64 0, align 8
@VECTORSPACING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Shadow register set %d not supported\00", align 1
@cpu_wait = common dso_local global i64 0, align 8
@r4k_wait = common dso_local global i64 0, align 8
@rollback_except_vec_vi = external dso_local global i8, align 1
@except_vec_vi = external dso_local global i8, align 1
@except_vec_vi_end = external dso_local global i8, align 1
@except_vec_vi_lui = external dso_local global i8, align 1
@except_vec_vi_ori = external dso_local global i8, align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"VECTORSPACING too small\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32*, i32)* @set_vi_srs_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @set_vi_srs_handler(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i64*, i64** @vi_handlers, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 0), align 4
  store i32 %21, i32* %9, align 4
  %22 = load i64, i64* @cpu_has_veic, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i64, i64* @cpu_has_vint, align 8
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %24, %3
  %29 = phi i1 [ false, %3 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i64, i64* @do_default_vi, align 8
  store i64 %35, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %39

36:                                               ; preds = %28
  %37 = load i32*, i32** %5, align 8
  %38 = ptrtoint i32* %37 to i64
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %36, %34
  %40 = load i32*, i32** %5, align 8
  %41 = ptrtoint i32* %40 to i64
  %42 = load i64*, i64** @vi_handlers, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  store i64 %41, i64* %45, align 8
  %46 = load i64, i64* @ebase, align 8
  %47 = add nsw i64 %46, 512
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @VECTORSPACING, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %47, %51
  %53 = inttoptr i64 %52 to i8*
  store i8* %53, i8** %11, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %39
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %57, %39
  %61 = load i64, i64* @cpu_has_veic, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  br i1 true, label %64, label %68

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @board_bind_eic_interrupt(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %63
  br label %86

69:                                               ; preds = %60
  %70 = load i64, i64* @cpu_has_vint, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  %74 = icmp sgt i32 %73, 1
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i32, i32* %4, align 4
  %77 = mul nsw i32 %76, 4
  %78 = shl i32 15, %77
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %4, align 4
  %81 = mul nsw i32 %80, 4
  %82 = shl i32 %79, %81
  %83 = call i32 @change_c0_srsmap(i32 %78, i32 %82)
  br label %84

84:                                               ; preds = %75, %72
  br label %85

85:                                               ; preds = %84, %69
  br label %86

86:                                               ; preds = %85, %68
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %152

89:                                               ; preds = %86
  %90 = load i64, i64* @cpu_wait, align 8
  %91 = load i64, i64* @r4k_wait, align 8
  %92 = icmp eq i64 %90, %91
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* @rollback_except_vec_vi, i8* @except_vec_vi
  store i8* %94, i8** %12, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = ptrtoint i8* %95 to i64
  %97 = sub i64 ptrtoint (i8* @except_vec_vi_end to i64), %96
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %13, align 4
  %99 = load i8*, i8** %12, align 8
  %100 = ptrtoint i8* %99 to i64
  %101 = sub i64 ptrtoint (i8* @except_vec_vi_lui to i64), %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %14, align 4
  %103 = load i8*, i8** %12, align 8
  %104 = ptrtoint i8* %103 to i64
  %105 = sub i64 ptrtoint (i8* @except_vec_vi_ori to i64), %104
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @VECTORSPACING, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %89
  %111 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %89
  %113 = load i8*, i8** %11, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @memcpy(i8* %113, i8* %114, i32 %115)
  %117 = load i8*, i8** %11, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = bitcast i8* %120 to i32*
  store i32* %121, i32** %10, align 8
  %122 = load i32*, i32** %10, align 8
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, -65536
  %125 = load i64, i64* %7, align 8
  %126 = trunc i64 %125 to i32
  %127 = ashr i32 %126, 16
  %128 = and i32 %127, 65535
  %129 = or i32 %124, %128
  %130 = load i32*, i32** %10, align 8
  store i32 %129, i32* %130, align 4
  %131 = load i8*, i8** %11, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = bitcast i8* %134 to i32*
  store i32* %135, i32** %10, align 8
  %136 = load i32*, i32** %10, align 8
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, -65536
  %139 = load i64, i64* %7, align 8
  %140 = trunc i64 %139 to i32
  %141 = and i32 %140, 65535
  %142 = or i32 %138, %141
  %143 = load i32*, i32** %10, align 8
  store i32 %142, i32* %143, align 4
  %144 = load i8*, i8** %11, align 8
  %145 = ptrtoint i8* %144 to i64
  %146 = load i8*, i8** %11, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = ptrtoint i8* %149 to i64
  %151 = call i32 @local_flush_icache_range(i64 %145, i64 %150)
  br label %169

152:                                              ; preds = %86
  %153 = load i8*, i8** %11, align 8
  %154 = bitcast i8* %153 to i32*
  store i32* %154, i32** %10, align 8
  %155 = load i64, i64* %7, align 8
  %156 = trunc i64 %155 to i32
  %157 = ashr i32 %156, 2
  %158 = and i32 %157, 4194303
  %159 = or i32 134217728, %158
  %160 = load i32*, i32** %10, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %10, align 8
  store i32 %159, i32* %160, align 4
  %162 = load i32*, i32** %10, align 8
  store i32 0, i32* %162, align 4
  %163 = load i8*, i8** %11, align 8
  %164 = ptrtoint i8* %163 to i64
  %165 = load i8*, i8** %11, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 8
  %167 = ptrtoint i8* %166 to i64
  %168 = call i32 @local_flush_icache_range(i64 %164, i64 %167)
  br label %169

169:                                              ; preds = %152, %112
  %170 = load i64, i64* %8, align 8
  %171 = inttoptr i64 %170 to i8*
  ret i8* %171
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @board_bind_eic_interrupt(i32, i32) #1

declare dso_local i32 @change_c0_srsmap(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @local_flush_icache_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
