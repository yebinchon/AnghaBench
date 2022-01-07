; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-input.c_cx88_ir_handle_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-input.c_cx88_ir_handle_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_IR = type { i32, i32, i32, i32, %struct.cx88_core*, i64, i32, i32 }
%struct.cx88_core = type { i32 }

@MO_GP1_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"irq gpio=0x%x code=%d | %s%s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" down\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" up\00", align 1
@CX88_BOARD_NORWOOD_MICRO = common dso_local global i64 0, align 8
@MO_GP0_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx88_IR*)* @cx88_ir_handle_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx88_ir_handle_key(%struct.cx88_IR* %0) #0 {
  %2 = alloca %struct.cx88_IR*, align 8
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cx88_IR* %0, %struct.cx88_IR** %2, align 8
  %8 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %9 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %8, i32 0, i32 4
  %10 = load %struct.cx88_core*, %struct.cx88_core** %9, align 8
  store %struct.cx88_core* %10, %struct.cx88_core** %3, align 8
  %11 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %12 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @cx_read(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %16 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %35 [
    i32 131, label %18
    i32 130, label %26
    i32 129, label %26
    i32 128, label %26
  ]

18:                                               ; preds = %1
  %19 = load i32, i32* @MO_GP1_IO, align 4
  %20 = call i32 @cx_read(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 2045
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 239
  %25 = add nsw i32 %22, %24
  store i32 %25, i32* %4, align 4
  br label %37

26:                                               ; preds = %1, %1, %1
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 1791
  %29 = load i32, i32* @MO_GP1_IO, align 4
  %30 = call i32 @cx_read(i32 %29)
  %31 = shl i32 %30, 8
  %32 = and i32 %31, 2304
  %33 = or i32 %28, %32
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %6, align 4
  br label %37

35:                                               ; preds = %1
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %35, %26, %18
  %38 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %39 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %44 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %166

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %52 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %49, %37
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %56 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ir_extract_bits(i32 %54, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %62 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %69 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %77 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %75, %78
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %83 = call i32 @ir_dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60, i8* %66, i8* %74, i8* %82)
  %84 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %85 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %84, i32 0, i32 4
  %86 = load %struct.cx88_core*, %struct.cx88_core** %85, align 8
  %87 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* @CX88_BOARD_NORWOOD_MICRO, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %53
  %93 = load i32, i32* @MO_GP0_IO, align 4
  %94 = call i32 @cx_read(i32 %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %5, align 4
  %96 = shl i32 %95, 4
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %97, 240
  %99 = ashr i32 %98, 4
  %100 = or i32 %96, %99
  store i32 %100, i32* %5, align 4
  %101 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %102 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @rc_keydown(i32 %103, i32 %104, i32 0)
  br label %166

106:                                              ; preds = %53
  %107 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %108 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %106
  %112 = load i32, i32* %4, align 4
  %113 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %114 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %112, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %111
  %119 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %120 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @rc_keydown_notimeout(i32 %121, i32 %122, i32 0)
  br label %129

124:                                              ; preds = %111
  %125 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %126 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @rc_keyup(i32 %127)
  br label %129

129:                                              ; preds = %124, %118
  br label %165

130:                                              ; preds = %106
  %131 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %132 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %154

135:                                              ; preds = %130
  %136 = load i32, i32* %4, align 4
  %137 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %138 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %136, %139
  %141 = icmp eq i32 0, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %135
  %143 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %144 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %5, align 4
  %147 = call i32 @rc_keydown_notimeout(i32 %145, i32 %146, i32 0)
  br label %153

148:                                              ; preds = %135
  %149 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %150 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @rc_keyup(i32 %151)
  br label %153

153:                                              ; preds = %148, %142
  br label %164

154:                                              ; preds = %130
  %155 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %156 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %5, align 4
  %159 = call i32 @rc_keydown_notimeout(i32 %157, i32 %158, i32 0)
  %160 = load %struct.cx88_IR*, %struct.cx88_IR** %2, align 8
  %161 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @rc_keyup(i32 %162)
  br label %164

164:                                              ; preds = %154, %153
  br label %165

165:                                              ; preds = %164, %129
  br label %166

166:                                              ; preds = %48, %165, %92
  ret void
}

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @ir_extract_bits(i32, i32) #1

declare dso_local i32 @ir_dprintk(i8*, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @rc_keydown(i32, i32, i32) #1

declare dso_local i32 @rc_keydown_notimeout(i32, i32, i32) #1

declare dso_local i32 @rc_keyup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
