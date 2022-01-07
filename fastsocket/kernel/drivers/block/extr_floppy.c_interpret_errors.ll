; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_interpret_errors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_interpret_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 (...)*, i32 (i32)* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@inr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"-- FDC reply error\00", align 1
@FDCS = common dso_local global %struct.TYPE_8__* null, align 8
@ST0 = common dso_local global i32 0, align 4
@ST0_INTR = common dso_local global i32 0, align 4
@ST1 = common dso_local global i32 0, align 4
@ST1_EOC = common dso_local global i32 0, align 4
@ST1_WP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Drive is write protected\0A\00", align 1
@FD_DISK_WRITABLE = common dso_local global i32 0, align 4
@cont = common dso_local global %struct.TYPE_7__* null, align 8
@ST1_ND = common dso_local global i32 0, align 4
@FD_NEED_TWADDLE = common dso_local global i32 0, align 4
@ST1_OR = common dso_local global i32 0, align 4
@DP = common dso_local global %struct.TYPE_10__* null, align 8
@FTD_MSG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Over/Underrun - retrying\0A\00", align 1
@errors = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ST0_ECE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Recalibrate failed!\00", align 1
@ST2 = common dso_local global i32 0, align 4
@ST2_CRC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"data CRC error\00", align 1
@ST1_CRC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"CRC error\00", align 1
@ST1_MAM = common dso_local global i32 0, align 4
@ST2_MAM = common dso_local global i32 0, align 4
@probing = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"sector not found\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"probe failed...\00", align 1
@ST2_WC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"wrong cylinder\00", align 1
@ST2_BC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"bad cylinder\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"unknown error. ST[0..2] are: 0x%x 0x%x 0x%x\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@NEED_2_RECAL = common dso_local global i32 0, align 4
@DRS = common dso_local global %struct.TYPE_9__* null, align 8
@.str.13 = private unnamed_addr constant [28 x i8] c"Invalid FDC command given!\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Abnormal termination caused by polling\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @interpret_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interpret_errors() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = load i32, i32* @inr, align 4
  %4 = icmp ne i32 %3, 7
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = call i32 @DPRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** @FDCS, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  store i32 1, i32* %1, align 4
  br label %168

9:                                                ; preds = %0
  %10 = load i32, i32* @ST0, align 4
  %11 = load i32, i32* @ST0_INTR, align 4
  %12 = and i32 %10, %11
  switch i32 %12, label %167 [
    i32 64, label %13
    i32 128, label %155
    i32 192, label %161
  ]

13:                                               ; preds = %9
  %14 = load i32, i32* @ST1, align 4
  %15 = load i32, i32* @ST1_EOC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %168

19:                                               ; preds = %13
  store i8 1, i8* %2, align 1
  %20 = load i32, i32* @ST1, align 4
  %21 = load i32, i32* @ST1_WP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = call i32 @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @FD_DISK_WRITABLE, align 4
  %27 = call i32 @CLEARF(i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cont, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32 (i32)*, i32 (i32)** %29, align 8
  %31 = call i32 %30(i32 0)
  store i8 2, i8* %2, align 1
  br label %138

32:                                               ; preds = %19
  %33 = load i32, i32* @ST1, align 4
  %34 = load i32, i32* @ST1_ND, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @FD_NEED_TWADDLE, align 4
  %39 = call i32 @SETF(i32 %38)
  br label %137

40:                                               ; preds = %32
  %41 = load i32, i32* @ST1, align 4
  %42 = load i32, i32* @ST1_OR, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DP, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @FTD_MSG, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %45
  store i8 0, i8* %2, align 1
  br label %136

55:                                               ; preds = %40
  %56 = load i32*, i32** @errors, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DP, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sge i32 %57, %61
  br i1 %62, label %63, label %135

63:                                               ; preds = %55
  %64 = call i32 @DPRINT(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* @ST0, align 4
  %66 = load i32, i32* @ST0_ECE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %133

71:                                               ; preds = %63
  %72 = load i32, i32* @ST2, align 4
  %73 = load i32, i32* @ST2_CRC, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %78 = call i32 (...) @tell_sector()
  br label %132

79:                                               ; preds = %71
  %80 = load i32, i32* @ST1, align 4
  %81 = load i32, i32* @ST1_CRC, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %86 = call i32 (...) @tell_sector()
  br label %131

87:                                               ; preds = %79
  %88 = load i32, i32* @ST1, align 4
  %89 = load i32, i32* @ST1_MAM, align 4
  %90 = load i32, i32* @ST1_ND, align 4
  %91 = or i32 %89, %90
  %92 = and i32 %88, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* @ST2, align 4
  %96 = load i32, i32* @ST2_MAM, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %94, %87
  %100 = load i32, i32* @probing, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %104 = call i32 (...) @tell_sector()
  br label %107

105:                                              ; preds = %99
  %106 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %102
  br label %130

108:                                              ; preds = %94
  %109 = load i32, i32* @ST2, align 4
  %110 = load i32, i32* @ST2_WC, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  br label %129

115:                                              ; preds = %108
  %116 = load i32, i32* @ST2, align 4
  %117 = load i32, i32* @ST2_BC, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  br label %128

122:                                              ; preds = %115
  %123 = load i32, i32* @ST0, align 4
  %124 = load i32, i32* @ST1, align 4
  %125 = load i32, i32* @ST2, align 4
  %126 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i32 %123, i32 %124, i32 %125)
  %127 = call i32 (...) @tell_sector()
  br label %128

128:                                              ; preds = %122, %120
  br label %129

129:                                              ; preds = %128, %113
  br label %130

130:                                              ; preds = %129, %107
  br label %131

131:                                              ; preds = %130, %84
  br label %132

132:                                              ; preds = %131, %76
  br label %133

133:                                              ; preds = %132, %69
  %134 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %55
  br label %136

136:                                              ; preds = %135, %54
  br label %137

137:                                              ; preds = %136, %37
  br label %138

138:                                              ; preds = %137, %24
  %139 = load i32, i32* @ST2, align 4
  %140 = load i32, i32* @ST2_WC, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* @ST2, align 4
  %145 = load i32, i32* @ST2_BC, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143, %138
  %149 = load i32, i32* @NEED_2_RECAL, align 4
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** @DRS, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  br label %152

152:                                              ; preds = %148, %143
  %153 = load i8, i8* %2, align 1
  %154 = sext i8 %153 to i32
  store i32 %154, i32* %1, align 4
  br label %168

155:                                              ; preds = %9
  %156 = call i32 @DPRINT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cont, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = load i32 (i32)*, i32 (i32)** %158, align 8
  %160 = call i32 %159(i32 0)
  store i32 2, i32* %1, align 4
  br label %168

161:                                              ; preds = %9
  %162 = call i32 @DPRINT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0))
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cont, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32 (...)*, i32 (...)** %164, align 8
  %166 = call i32 (...) %165()
  store i32 2, i32* %1, align 4
  br label %168

167:                                              ; preds = %9
  store i32 0, i32* %1, align 4
  br label %168

168:                                              ; preds = %167, %161, %155, %152, %18, %5
  %169 = load i32, i32* %1, align 4
  ret i32 %169
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @CLEARF(i32) #1

declare dso_local i32 @SETF(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @tell_sector(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
