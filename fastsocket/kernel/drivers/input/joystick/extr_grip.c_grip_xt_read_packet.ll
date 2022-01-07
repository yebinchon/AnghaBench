; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_grip.c_grip_xt_read_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_grip.c_grip_xt_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }

@GRIP_STROBE_XT = common dso_local global i32 0, align 4
@GRIP_MAX_BITS_XT = common dso_local global i32 0, align 4
@GRIP_MAX_CHUNKS_XT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gameport*, i32, i32*)* @grip_xt_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grip_xt_read_packet(%struct.gameport* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.gameport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %18 = load %struct.gameport*, %struct.gameport** %4, align 8
  %19 = load i32, i32* @GRIP_STROBE_XT, align 4
  %20 = call i32 @gameport_time(%struct.gameport* %18, i32 %19)
  store i32 %20, i32* %17, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  store i32 0, i32* %22, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  store i32 0, i32* %24, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 0, i32* %26, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 0, i32* %28, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i8 0, i8* %16, align 1
  %29 = load i32, i32* %17, align 4
  store i32 %29, i32* %15, align 4
  %30 = load i64, i64* %14, align 8
  %31 = call i32 @local_irq_save(i64 %30)
  %32 = load %struct.gameport*, %struct.gameport** %4, align 8
  %33 = call i32 @gameport_read(%struct.gameport* %32)
  %34 = load i32, i32* %5, align 4
  %35 = ashr i32 %33, %34
  %36 = and i32 %35, 3
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %13, align 1
  store i8 %37, i8* %12, align 1
  br label %38

38:                                               ; preds = %155, %3
  %39 = load i32, i32* %15, align 4
  %40 = add i32 %39, -1
  store i32 %40, i32* %15, align 4
  %41 = load %struct.gameport*, %struct.gameport** %4, align 8
  %42 = call i32 @gameport_read(%struct.gameport* %41)
  %43 = load i32, i32* %5, align 4
  %44 = ashr i32 %42, %43
  %45 = and i32 %44, 3
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %11, align 1
  %47 = load i8, i8* %11, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %12, align 1
  %50 = zext i8 %49 to i32
  %51 = xor i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %139

53:                                               ; preds = %38
  %54 = load i8, i8* %11, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8, i8* %12, align 1
  %57 = zext i8 %56 to i32
  %58 = xor i32 %55, %57
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %53
  %62 = load i32, i32* %9, align 4
  %63 = shl i32 %62, 1
  %64 = load i8, i8* %11, align 1
  %65 = zext i8 %64 to i32
  %66 = ashr i32 %65, 1
  %67 = or i32 %63, %66
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %17, align 4
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %7, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %136

71:                                               ; preds = %53
  %72 = load i8, i8* %11, align 1
  %73 = zext i8 %72 to i32
  %74 = load i8, i8* %12, align 1
  %75 = zext i8 %74 to i32
  %76 = xor i32 %73, %75
  %77 = load i8, i8* %12, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* %13, align 1
  %80 = zext i8 %79 to i32
  %81 = xor i32 %78, %80
  %82 = and i32 %76, %81
  %83 = ashr i32 %82, 1
  %84 = load i8, i8* %11, align 1
  %85 = zext i8 %84 to i32
  %86 = load i8, i8* %12, align 1
  %87 = zext i8 %86 to i32
  %88 = or i32 %85, %87
  %89 = load i8, i8* %13, align 1
  %90 = zext i8 %89 to i32
  %91 = or i32 %88, %90
  %92 = xor i32 %91, -1
  %93 = and i32 %83, %92
  %94 = and i32 %93, 1
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %135

96:                                               ; preds = %71
  %97 = load i32, i32* %7, align 4
  %98 = icmp eq i32 %97, 20
  br i1 %98, label %99, label %133

99:                                               ; preds = %96
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = lshr i32 %101, 7
  %103 = xor i32 %100, %102
  %104 = load i32, i32* %9, align 4
  %105 = lshr i32 %104, 14
  %106 = xor i32 %103, %105
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = lshr i32 %108, 2
  %110 = and i32 %109, 28
  %111 = ashr i32 634101360, %110
  %112 = xor i32 %107, %111
  %113 = and i32 %112, 15
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %130, label %115

115:                                              ; preds = %99
  %116 = load i32, i32* %9, align 4
  %117 = lshr i32 %116, 4
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %9, align 4
  %120 = lshr i32 %119, 18
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  store i32 %117, i32* %122, align 4
  %123 = load i32, i32* %9, align 4
  %124 = lshr i32 %123, 18
  %125 = shl i32 1, %124
  %126 = load i8, i8* %16, align 1
  %127 = sext i8 %126 to i32
  %128 = or i32 %127, %125
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %16, align 1
  br label %130

130:                                              ; preds = %115, %99
  %131 = load i32, i32* %8, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %130, %96
  %134 = load i32, i32* %17, align 4
  store i32 %134, i32* %15, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %135

135:                                              ; preds = %133, %71
  br label %136

136:                                              ; preds = %135, %61
  %137 = load i8, i8* %12, align 1
  store i8 %137, i8* %13, align 1
  %138 = load i8, i8* %11, align 1
  store i8 %138, i8* %12, align 1
  br label %139

139:                                              ; preds = %136, %38
  br label %140

140:                                              ; preds = %139
  %141 = load i8, i8* %16, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp ne i32 %142, 15
  br i1 %143, label %144, label %155

144:                                              ; preds = %140
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @GRIP_MAX_BITS_XT, align 4
  %147 = icmp ult i32 %145, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %144
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @GRIP_MAX_CHUNKS_XT, align 4
  %151 = icmp ult i32 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = load i32, i32* %15, align 4
  %154 = icmp ugt i32 %153, 0
  br label %155

155:                                              ; preds = %152, %148, %144, %140
  %156 = phi i1 [ false, %148 ], [ false, %144 ], [ false, %140 ], [ %154, %152 ]
  br i1 %156, label %38, label %157

157:                                              ; preds = %155
  %158 = load i64, i64* %14, align 8
  %159 = call i32 @local_irq_restore(i64 %158)
  %160 = load i8, i8* %16, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 %161, 15
  %163 = zext i1 %162 to i32
  %164 = sub nsw i32 0, %163
  ret i32 %164
}

declare dso_local i32 @gameport_time(%struct.gameport*, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @gameport_read(%struct.gameport*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
