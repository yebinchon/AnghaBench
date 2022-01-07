; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_adi.c_adi_read_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_adi.c_adi_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adi_port = type { %struct.gameport*, %struct.adi* }
%struct.gameport = type { i32 }
%struct.adi = type { i32, i8* }

@ADI_MAX_START = common dso_local global i32 0, align 4
@ADI_MAX_LENGTH = common dso_local global i32 0, align 4
@ADI_MAX_STROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adi_port*)* @adi_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adi_read_packet(%struct.adi_port* %0) #0 {
  %2 = alloca %struct.adi_port*, align 8
  %3 = alloca %struct.adi*, align 8
  %4 = alloca %struct.gameport*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca [2 x i32], align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.adi_port* %0, %struct.adi_port** %2, align 8
  %14 = load %struct.adi_port*, %struct.adi_port** %2, align 8
  %15 = getelementptr inbounds %struct.adi_port, %struct.adi_port* %14, i32 0, i32 1
  %16 = load %struct.adi*, %struct.adi** %15, align 8
  store %struct.adi* %16, %struct.adi** %3, align 8
  %17 = load %struct.adi_port*, %struct.adi_port** %2, align 8
  %18 = getelementptr inbounds %struct.adi_port, %struct.adi_port* %17, i32 0, i32 0
  %19 = load %struct.gameport*, %struct.gameport** %18, align 8
  store %struct.gameport* %19, %struct.gameport** %4, align 8
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %38, %1
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load %struct.adi*, %struct.adi** %3, align 8
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.adi, %struct.adi* %24, i64 %26
  %28 = getelementptr inbounds %struct.adi, %struct.adi* %27, i32 0, i32 0
  store i32 -1, i32* %28, align 8
  %29 = load %struct.gameport*, %struct.gameport** %4, align 8
  %30 = load i32, i32* @ADI_MAX_START, align 4
  %31 = call i32 @gameport_time(%struct.gameport* %29, i32 %30)
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %33
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %36
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %23
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %12, align 4
  br label %20

41:                                               ; preds = %20
  %42 = load i64, i64* %13, align 8
  %43 = call i32 @local_irq_save(i64 %42)
  %44 = load %struct.gameport*, %struct.gameport** %4, align 8
  %45 = call i32 @gameport_trigger(%struct.gameport* %44)
  %46 = load %struct.gameport*, %struct.gameport** %4, align 8
  %47 = call zeroext i8 @gameport_read(%struct.gameport* %46)
  store i8 %47, i8* %9, align 1
  store i8 %47, i8* %6, align 1
  br label %48

48:                                               ; preds = %155, %41
  %49 = load i8, i8* %6, align 1
  store i8 %49, i8* %5, align 1
  %50 = load i8, i8* %5, align 1
  %51 = zext i8 %50 to i32
  %52 = load %struct.gameport*, %struct.gameport** %4, align 8
  %53 = call zeroext i8 @gameport_read(%struct.gameport* %52)
  store i8 %53, i8* %8, align 1
  store i8 %53, i8* %6, align 1
  %54 = zext i8 %53 to i32
  %55 = xor i32 %51, %54
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %7, align 1
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %135, %48
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %58, 2
  br i1 %59, label %60, label %146

60:                                               ; preds = %57
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %63, align 4
  %66 = load i8, i8* %7, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 48
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %124

70:                                               ; preds = %60
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %124

76:                                               ; preds = %70
  %77 = load i8, i8* %7, align 1
  %78 = zext i8 %77 to i32
  %79 = and i32 %78, 48
  %80 = icmp slt i32 %79, 48
  br i1 %80, label %81, label %119

81:                                               ; preds = %76
  %82 = load %struct.adi*, %struct.adi** %3, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.adi, %struct.adi* %82, i64 %84
  %86 = getelementptr inbounds %struct.adi, %struct.adi* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @ADI_MAX_LENGTH, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %119

90:                                               ; preds = %81
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %119

96:                                               ; preds = %90
  %97 = load i8, i8* %7, align 1
  %98 = load %struct.adi*, %struct.adi** %3, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.adi, %struct.adi* %98, i64 %100
  %102 = getelementptr inbounds %struct.adi, %struct.adi* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.adi*, %struct.adi** %3, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.adi, %struct.adi* %104, i64 %106
  %108 = getelementptr inbounds %struct.adi, %struct.adi* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %103, i64 %111
  store i8 %97, i8* %112, align 1
  %113 = load %struct.gameport*, %struct.gameport** %4, align 8
  %114 = load i32, i32* @ADI_MAX_STROBE, align 4
  %115 = call i32 @gameport_time(%struct.gameport* %113, i32 %114)
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %117
  store i32 %115, i32* %118, align 4
  br label %123

119:                                              ; preds = %90, %81, %76
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %121
  store i32 0, i32* %122, align 4
  br label %123

123:                                              ; preds = %119, %96
  br label %134

124:                                              ; preds = %70, %60
  %125 = load i8, i8* %8, align 1
  %126 = zext i8 %125 to i32
  %127 = and i32 %126, 48
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %131
  store i32 1, i32* %132, align 4
  br label %133

133:                                              ; preds = %129, %124
  br label %134

134:                                              ; preds = %133, %123
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %12, align 4
  %138 = load i8, i8* %7, align 1
  %139 = zext i8 %138 to i32
  %140 = ashr i32 %139, 2
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %7, align 1
  %142 = load i8, i8* %8, align 1
  %143 = zext i8 %142 to i32
  %144 = ashr i32 %143, 2
  %145 = trunc i32 %144 to i8
  store i8 %145, i8* %8, align 1
  br label %57

146:                                              ; preds = %57
  br label %147

147:                                              ; preds = %146
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp sgt i32 %153, 0
  br label %155

155:                                              ; preds = %151, %147
  %156 = phi i1 [ true, %147 ], [ %154, %151 ]
  br i1 %156, label %48, label %157

157:                                              ; preds = %155
  %158 = load i64, i64* %13, align 8
  %159 = call i32 @local_irq_restore(i64 %158)
  ret void
}

declare dso_local i32 @gameport_time(%struct.gameport*, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @gameport_trigger(%struct.gameport*) #1

declare dso_local zeroext i8 @gameport_read(%struct.gameport*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
