; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_pc300_tty.c_cpc_tty_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_pc300_tty.c_cpc_tty_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i64, i32, %struct.tty_struct*, %struct.TYPE_6__, i64 }
%struct.tty_struct = type { i32, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_5__* }
%struct.file = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@CPC_TTY_NPORTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"pc300_tty: open invalid port %d\0A\00", align 1
@cpc_tty_area = common dso_local global %struct.TYPE_7__* null, align 8
@CPC_TTY_ST_IDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"%s: open - invalid interface, port=%d\0A\00", align 1
@CPC_TTY_MAX_MTU = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: error in memory allocation\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CPC_TTY_ST_OPEN = common dso_local global i64 0, align 8
@CTL_DTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"%s: opening TTY driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @cpc_tty_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpc_tty_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = icmp ne %struct.tty_struct* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %177

14:                                               ; preds = %2
  %15 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %16 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @CPC_TTY_NPORTS, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20, %14
  %25 = load i32, i32* %6, align 4
  %26 = call i32 (i8*, i32, ...) @CPC_TTY_DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %177

29:                                               ; preds = %20
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpc_tty_area, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %32
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %7, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CPC_TTY_ST_IDLE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %29
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %44 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i8*, i32, ...) @CPC_TTY_DBG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %177

49:                                               ; preds = %29
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %168

54:                                               ; preds = %49
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpc_tty_area, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 6
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %86, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* @CPC_TTY_MAX_MTU, align 4
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i64 @kmalloc(i32 %63, i32 %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpc_tty_area, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 6
  store i64 %65, i64* %70, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpc_tty_area, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %62
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i8*, i32, ...) @CPC_TTY_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %177

85:                                               ; preds = %62
  br label %86

86:                                               ; preds = %85, %54
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpc_tty_area, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = icmp ne %struct.TYPE_5__* %93, null
  br i1 %94, label %95, label %144

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %105, %95
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpc_tty_area, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = icmp ne %struct.TYPE_5__* %103, null
  br i1 %104, label %105, label %131

105:                                              ; preds = %96
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpc_tty_area, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = bitcast %struct.TYPE_5__* %112 to i8*
  store i8* %113, i8** %8, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpc_tty_area, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpc_tty_area, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  store %struct.TYPE_5__* %122, %struct.TYPE_5__** %128, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = call i32 @kfree(i8* %129)
  br label %96

131:                                              ; preds = %96
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpc_tty_area, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %137, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpc_tty_area, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  store i32* null, i32** %143, align 8
  br label %144

144:                                              ; preds = %131, %86
  %145 = load i64, i64* @CPC_TTY_ST_OPEN, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpc_tty_area, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  store i64 %145, i64* %150, align 8
  %151 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpc_tty_area, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 4
  store %struct.tty_struct* %151, %struct.tty_struct** %156, align 8
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpc_tty_area, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i64 %159
  %161 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %162 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %161, i32 0, i32 1
  store %struct.TYPE_7__* %160, %struct.TYPE_7__** %162, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @CTL_DTR, align 4
  %167 = call i32 @cpc_tty_signal_on(i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %144, %49
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %170, align 8
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = call i32 (i8*, i32, ...) @CPC_TTY_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %175)
  store i32 0, i32* %3, align 4
  br label %177

177:                                              ; preds = %168, %78, %39, %24, %11
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i32 @CPC_TTY_DBG(i8*, i32, ...) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @cpc_tty_signal_on(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
