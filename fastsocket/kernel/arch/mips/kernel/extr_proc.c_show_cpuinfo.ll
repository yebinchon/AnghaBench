; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_proc.c_show_cpuinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_proc.c_show_cpuinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.seq_file = type { i32 }

@cpu_data = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"system type\09\09: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"processor\09\09: %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"cpu model\09\09: %%s V%%d.%%d%s\0A\00", align 1
@MIPS_CPU_FPU = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"  FPU V%d.%d\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__cpu_name = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"BogoMIPS\09\09: %u.%02u\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"wait instruction\09: %s\0A\00", align 1
@cpu_wait = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"microsecond timers\09: %s\0A\00", align 1
@cpu_has_counter = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [19 x i8] c"tlb_entries\09\09: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"extra interrupt vector\09: %s\0A\00", align 1
@cpu_has_divec = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [25 x i8] c"hardware watchpoint\09: %s\00", align 1
@cpu_has_watch = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"yes, \00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"no\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"count: %d, address/irw mask: [\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"%s0x%04x\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"ASEs implemented\09:%s%s%s%s%s%s\0A\00", align 1
@cpu_has_mips16 = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [8 x i8] c" mips16\00", align 1
@cpu_has_mdmx = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [6 x i8] c" mdmx\00", align 1
@cpu_has_mips3d = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [8 x i8] c" mips3d\00", align 1
@cpu_has_smartmips = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [11 x i8] c" smartmips\00", align 1
@cpu_has_dsp = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [5 x i8] c" dsp\00", align 1
@cpu_has_mipsmt = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [4 x i8] c" mt\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"shadow register sets\09: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"core\09\09\09: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"VCE%%c exceptions\09\09: %s\0A\00", align 1
@cpu_has_vce = common dso_local global i64 0, align 8
@.str.29 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"not available\00", align 1
@vced_count = common dso_local global i32 0, align 4
@vcei_count = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@cpu_online_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @show_cpuinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_cpuinfo(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = ptrtoint i8* %10 to i64
  %12 = sub i64 %11, 1
  store i64 %12, i64* %5, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = call i32 (...) @get_system_type()
  %28 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %2
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MIPS_CPU_FPU, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %44 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  %45 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %47 = load i32*, i32** @__cpu_name, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = lshr i32 %51, 4
  %53 = and i32 %52, 15
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 15
  %56 = load i32, i32* %7, align 4
  %57 = lshr i32 %56, 4
  %58 = and i32 %57, 15
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, 15
  %61 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %45, i8* %46, i32 %50, i32 %53, i32 %55, i32 %58, i32 %60)
  %62 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @HZ, align 4
  %69 = sdiv i32 500000, %68
  %70 = sdiv i32 %67, %69
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %72 = load i64, i64* %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @HZ, align 4
  %77 = sdiv i32 5000, %76
  %78 = sdiv i32 %75, %77
  %79 = srem i32 %78, 100
  %80 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %70, i32 %79)
  %81 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %82 = load i64, i64* @cpu_wait, align 8
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)
  %86 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %85)
  %87 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %88 = load i64, i64* @cpu_has_counter, align 8
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)
  %92 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %91)
  %93 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %95 = load i64, i64* %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %98)
  %100 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %101 = load i64, i64* @cpu_has_divec, align 8
  %102 = icmp ne i64 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)
  %105 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8* %104)
  %106 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %107 = load i64, i64* @cpu_has_watch, align 8
  %108 = icmp ne i64 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0)
  %111 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %106, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i8* %110)
  %112 = load i64, i64* @cpu_has_watch, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %152

114:                                              ; preds = %29
  %115 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %117 = load i64, i64* %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 %120)
  store i32 0, i32* %9, align 4
  br label %122

122:                                              ; preds = %146, %114
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %125 = load i64, i64* %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %123, %128
  br i1 %129, label %130, label %149

130:                                              ; preds = %122
  %131 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %137 = load i64, i64* %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 7
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %131, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* %135, i32 %144)
  br label %146

146:                                              ; preds = %130
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %9, align 4
  br label %122

149:                                              ; preds = %122
  %150 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %151 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %150, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  br label %152

152:                                              ; preds = %149, %29
  %153 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %154 = load i64, i64* @cpu_has_mips16, align 8
  %155 = icmp ne i64 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %158 = load i64, i64* @cpu_has_mdmx, align 8
  %159 = icmp ne i64 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %162 = load i64, i64* @cpu_has_mips3d, align 8
  %163 = icmp ne i64 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %166 = load i64, i64* @cpu_has_smartmips, align 8
  %167 = icmp ne i64 %166, 0
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %170 = load i64, i64* @cpu_has_dsp, align 8
  %171 = icmp ne i64 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %174 = load i64, i64* @cpu_has_mipsmt, align 8
  %175 = icmp ne i64 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %178 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %153, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0), i8* %157, i8* %161, i8* %165, i8* %169, i8* %173, i8* %177)
  %179 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %181 = load i64, i64* %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 8
  %185 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %179, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i32 %184)
  %186 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %188 = load i64, i64* %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %186, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), i32 %191)
  %193 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %194 = load i64, i64* @cpu_has_vce, align 8
  %195 = icmp ne i64 %194, 0
  %196 = zext i1 %195 to i64
  %197 = select i1 %195, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0)
  %198 = call i32 @sprintf(i8* %193, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0), i8* %197)
  %199 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %200 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %201 = load i32, i32* @vced_count, align 4
  %202 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %199, i8* %200, i32 68, i32 %201)
  %203 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %204 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %205 = load i32, i32* @vcei_count, align 4
  %206 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %203, i8* %204, i32 73, i32 %205)
  %207 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %208 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %207, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @get_system_type(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
