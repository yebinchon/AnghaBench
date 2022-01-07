; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-core.c_cx88_sram_channel_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-core.c_cx88_sram_channel_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32 }
%struct.sram_channel = type { i32, i32, i64, i64, i64, i64, i64, i32, i64 }

@cx88_sram_channel_dump.name = internal global [11 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [13 x i8] c"initial risc\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"cdt base\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"cdt size\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"iq base\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"iq size\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"risc pc\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"iq wr ptr\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"iq rd ptr\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"cdt current\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"pci target\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"line / byte\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"%s: %s - dma channel status dump\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"%s:   cmds: %-12s: 0x%08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"%s:   risc%d: \00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"0x%08x [ arg #%d ]\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"%s:   iq %x: \00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"%s:   iq %x: 0x%08x [ arg #%d ]\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"%s: fifo: 0x%08x -> 0x%x\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"%s: ctrl: 0x%08x -> 0x%x\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"%s:   ptr1_reg: 0x%08x\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"%s:   ptr2_reg: 0x%08x\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"%s:   cnt1_reg: 0x%08x\0A\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"%s:   cnt2_reg: 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx88_sram_channel_dump(%struct.cx88_core* %0, %struct.sram_channel* %1) #0 {
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca %struct.sram_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cx88_core* %0, %struct.cx88_core** %3, align 8
  store %struct.sram_channel* %1, %struct.sram_channel** %4, align 8
  %9 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %10 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %13 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %11, i32 %14)
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %37, %2
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([11 x i8*], [11 x i8*]* @cx88_sram_channel_dump.name, i64 0, i64 0))
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %22 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [11 x i8*], [11 x i8*]* @cx88_sram_channel_dump.name, i64 0, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %29 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %28, i32 0, i32 8
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = mul i32 4, %31
  %33 = zext i32 %32 to i64
  %34 = add nsw i64 %30, %33
  %35 = call i32 @cx_read(i64 %34)
  %36 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %23, i8* %27, i32 %35)
  br label %37

37:                                               ; preds = %20
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %16

40:                                               ; preds = %16
  store i32 1, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %70, %40
  %42 = load i32, i32* %6, align 4
  %43 = icmp ult i32 %42, 4
  br i1 %43, label %44, label %73

44:                                               ; preds = %41
  %45 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %46 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %45, i32 0, i32 8
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, 11
  %50 = mul i32 4, %49
  %51 = zext i32 %50 to i64
  %52 = add nsw i64 %47, %51
  %53 = call i32 @cx_read(i64 %52)
  store i32 %53, i32* %5, align 4
  %54 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %55 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = add i32 %59, -1
  store i32 %60, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %44
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 %63, i32 %64)
  br label %69

66:                                               ; preds = %44
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @cx88_risc_decode(i32 %67)
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %66, %62
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %41

73:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %121, %73
  %75 = load i32, i32* %6, align 4
  %76 = icmp ult i32 %75, 16
  br i1 %76, label %77, label %125

77:                                               ; preds = %74
  %78 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %79 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = mul i32 4, %81
  %83 = zext i32 %82 to i64
  %84 = add nsw i64 %80, %83
  %85 = call i32 @cx_read(i64 %84)
  store i32 %85, i32* %5, align 4
  %86 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %87 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 %88, i32 %89)
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @cx88_risc_decode(i32 %91)
  store i32 %92, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %93

93:                                               ; preds = %117, %77
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %120

97:                                               ; preds = %93
  %98 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %99 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = add i32 %101, %102
  %104 = mul i32 4, %103
  %105 = zext i32 %104 to i64
  %106 = add nsw i64 %100, %105
  %107 = call i32 @cx_read(i64 %106)
  store i32 %107, i32* %5, align 4
  %108 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %109 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %7, align 4
  %113 = add i32 %111, %112
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i32 %110, i32 %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %97
  %118 = load i32, i32* %7, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %93

120:                                              ; preds = %93
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %6, align 4
  %124 = add i32 %123, %122
  store i32 %124, i32* %6, align 4
  br label %74

125:                                              ; preds = %74
  %126 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %127 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %130 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %133 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %136 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %134, %137
  %139 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i32 %128, i32 %131, i32 %138)
  %140 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %141 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %144 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %143, i32 0, i32 6
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %147 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %146, i32 0, i32 6
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %148, 96
  %150 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i32 %142, i64 %145, i64 %149)
  %151 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %152 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %155 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %154, i32 0, i32 5
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @cx_read(i64 %156)
  %158 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i32 %153, i32 %157)
  %159 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %160 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %163 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @cx_read(i64 %164)
  %166 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i32 %161, i32 %165)
  %167 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %168 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %171 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @cx_read(i64 %172)
  %174 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0), i32 %169, i32 %173)
  %175 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %176 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %179 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @cx_read(i64 %180)
  %182 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0), i32 %177, i32 %181)
  ret void
}

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @cx_read(i64) #1

declare dso_local i32 @cx88_risc_decode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
