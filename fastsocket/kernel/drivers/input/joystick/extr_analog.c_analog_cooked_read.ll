; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_analog.c_analog_cooked_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_analog.c_analog_cooked_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analog_port = type { i32, i32, i8, i32*, %struct.gameport* }
%struct.gameport = type { i32 }

@ANALOG_LOOP_TIME = common dso_local global i32 0, align 4
@ANALOG_MAX_TIME = common dso_local global i32 0, align 4
@ANALOG_FUZZ_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.analog_port*)* @analog_cooked_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analog_cooked_read(%struct.analog_port* %0) #0 {
  %2 = alloca %struct.analog_port*, align 8
  %3 = alloca %struct.gameport*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i8], align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.analog_port* %0, %struct.analog_port** %2, align 8
  %16 = load %struct.analog_port*, %struct.analog_port** %2, align 8
  %17 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %16, i32 0, i32 4
  %18 = load %struct.gameport*, %struct.gameport** %17, align 8
  store %struct.gameport* %18, %struct.gameport** %3, align 8
  %19 = load i32, i32* @ANALOG_LOOP_TIME, align 4
  %20 = load %struct.analog_port*, %struct.analog_port** %2, align 8
  %21 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %19, %22
  %24 = sdiv i32 %23, 1000
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @ANALOG_MAX_TIME, align 4
  %26 = load %struct.analog_port*, %struct.analog_port** %2, align 8
  %27 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul i32 %25, %28
  store i32 %29, i32* %9, align 4
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @local_irq_save(i64 %30)
  %32 = load %struct.gameport*, %struct.gameport** %3, align 8
  %33 = call i32 @gameport_trigger(%struct.gameport* %32)
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @GET_TIME(i32 %34)
  %36 = load i64, i64* %13, align 8
  %37 = call i32 @local_irq_restore(i64 %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %5, align 4
  %39 = load %struct.analog_port*, %struct.analog_port** %2, align 8
  %40 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %39, i32 0, i32 2
  %41 = load i8, i8* %40, align 8
  store i8 %41, i8* %11, align 1
  store i32 0, i32* %14, align 4
  br label %42

42:                                               ; preds = %101, %1
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %6, align 4
  %44 = load i8, i8* %11, align 1
  store i8 %44, i8* %12, align 1
  %45 = call i32 (...) @local_irq_disable()
  %46 = load %struct.gameport*, %struct.gameport** %3, align 8
  %47 = call zeroext i8 @gameport_read(%struct.gameport* %46)
  %48 = zext i8 %47 to i32
  %49 = load %struct.analog_port*, %struct.analog_port** %2, align 8
  %50 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %49, i32 0, i32 2
  %51 = load i8, i8* %50, align 8
  %52 = zext i8 %51 to i32
  %53 = and i32 %48, %52
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %11, align 1
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @GET_TIME(i32 %55)
  %57 = load i64, i64* %13, align 8
  %58 = call i32 @local_irq_restore(i64 %57)
  %59 = load i8, i8* %12, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* %11, align 1
  %62 = zext i8 %61 to i32
  %63 = xor i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %87

65:                                               ; preds = %42
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @DELTA(i32 %66, i32 %67)
  %69 = load i32, i32* %8, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %65
  %72 = load i8, i8* %12, align 1
  %73 = zext i8 %72 to i32
  %74 = load i8, i8* %11, align 1
  %75 = zext i8 %74 to i32
  %76 = xor i32 %73, %75
  %77 = trunc i32 %76 to i8
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 %79
  store i8 %77, i8* %80, align 1
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %83
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  br label %87

87:                                               ; preds = %71, %65, %42
  br label %88

88:                                               ; preds = %87
  %89 = load i8, i8* %11, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load i32, i32* %14, align 4
  %94 = icmp slt i32 %93, 4
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @DELTA(i32 %96, i32 %97)
  %99 = load i32, i32* %9, align 4
  %100 = icmp ult i32 %98, %99
  br label %101

101:                                              ; preds = %95, %92, %88
  %102 = phi i1 [ false, %92 ], [ false, %88 ], [ %100, %95 ]
  br i1 %102, label %42, label %103

103:                                              ; preds = %101
  %104 = load i8, i8* %11, align 1
  %105 = zext i8 %104 to i32
  %106 = shl i32 %105, 4
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %11, align 1
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %14, align 4
  br label %110

110:                                              ; preds = %160, %103
  %111 = load i32, i32* %14, align 4
  %112 = icmp sge i32 %111, 0
  br i1 %112, label %113, label %163

113:                                              ; preds = %110
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = load i8, i8* %11, align 1
  %120 = zext i8 %119 to i32
  %121 = or i32 %120, %118
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %11, align 1
  store i32 0, i32* %15, align 4
  br label %123

123:                                              ; preds = %156, %113
  %124 = load i32, i32* %15, align 4
  %125 = icmp slt i32 %124, 4
  br i1 %125, label %126, label %159

126:                                              ; preds = %123
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = load i32, i32* %15, align 4
  %133 = shl i32 1, %132
  %134 = and i32 %131, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %126
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @DELTA(i32 %137, i32 %141)
  %143 = load i32, i32* @ANALOG_FUZZ_BITS, align 4
  %144 = shl i32 %142, %143
  %145 = load %struct.analog_port*, %struct.analog_port** %2, align 8
  %146 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = udiv i32 %144, %147
  %149 = load %struct.analog_port*, %struct.analog_port** %2, align 8
  %150 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %15, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32 %148, i32* %154, align 4
  br label %155

155:                                              ; preds = %136, %126
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %15, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %15, align 4
  br label %123

159:                                              ; preds = %123
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %14, align 4
  br label %110

163:                                              ; preds = %110
  %164 = load i8, i8* %11, align 1
  %165 = zext i8 %164 to i32
  %166 = load %struct.analog_port*, %struct.analog_port** %2, align 8
  %167 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %166, i32 0, i32 2
  %168 = load i8, i8* %167, align 8
  %169 = zext i8 %168 to i32
  %170 = icmp ne i32 %165, %169
  %171 = zext i1 %170 to i32
  %172 = sub nsw i32 0, %171
  ret i32 %172
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @gameport_trigger(%struct.gameport*) #1

declare dso_local i32 @GET_TIME(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local zeroext i8 @gameport_read(%struct.gameport*) #1

declare dso_local i32 @DELTA(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
