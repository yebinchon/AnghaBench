; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_fill_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_fill_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@QLCNIC_RCODE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Error in get statistics mailbox command\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unknown get statistics mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*, i32*, i32, i32*)* @qlcnic_83xx_fill_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @qlcnic_83xx_fill_stats(%struct.qlcnic_adapter* %0, %struct.qlcnic_cmd_args* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.qlcnic_adapter*, align 8
  %8 = alloca %struct.qlcnic_cmd_args*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %7, align 8
  store %struct.qlcnic_cmd_args* %1, %struct.qlcnic_cmd_args** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %11, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %17 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %8, align 8
  %18 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %16, %struct.qlcnic_cmd_args* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @QLCNIC_RCODE_SUCCESS, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %5
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %24 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @dev_info(i32* %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  %30 = load i32*, i32** %11, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %9, align 8
  store i32* %31, i32** %6, align 8
  br label %173

32:                                               ; preds = %5
  %33 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %8, align 8
  %34 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %10, align 4
  switch i32 %37, label %162 [
    i32 130, label %38
    i32 129, label %92
    i32 128, label %134
  ]

38:                                               ; preds = %32
  store i32 2, i32* %13, align 4
  br label %39

39:                                               ; preds = %47, %38
  %40 = load i32, i32* %13, align 4
  %41 = icmp slt i32 %40, 28
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %8, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32* @qlcnic_83xx_copy_stats(%struct.qlcnic_cmd_args* %43, i32* %44, i32 %45)
  store i32* %46, i32** %9, align 8
  br label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, 2
  store i32 %49, i32* %13, align 4
  br label %39

50:                                               ; preds = %39
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 6
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %61, %50
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %54, 60
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %8, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32* @qlcnic_83xx_copy_stats(%struct.qlcnic_cmd_args* %57, i32* %58, i32 %59)
  store i32* %60, i32** %9, align 8
  br label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 2
  store i32 %63, i32* %13, align 4
  br label %53

64:                                               ; preds = %53
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 6
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %75, %64
  %68 = load i32, i32* %13, align 4
  %69 = icmp slt i32 %68, 80
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %8, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32* @qlcnic_83xx_copy_stats(%struct.qlcnic_cmd_args* %71, i32* %72, i32 %73)
  store i32* %74, i32** %9, align 8
  br label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 2
  store i32 %77, i32* %13, align 4
  br label %67

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %88, %78
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %8, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %13, align 4
  %87 = call i32* @qlcnic_83xx_copy_stats(%struct.qlcnic_cmd_args* %84, i32* %85, i32 %86)
  store i32* %87, i32** %9, align 8
  br label %88

88:                                               ; preds = %83
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 2
  store i32 %90, i32* %13, align 4
  br label %79

91:                                               ; preds = %79
  br label %171

92:                                               ; preds = %32
  store i32 2, i32* %13, align 4
  br label %93

93:                                               ; preds = %101, %92
  %94 = load i32, i32* %13, align 4
  %95 = icmp slt i32 %94, 8
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %8, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32* @qlcnic_83xx_copy_stats(%struct.qlcnic_cmd_args* %97, i32* %98, i32 %99)
  store i32* %100, i32** %9, align 8
  br label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 2
  store i32 %103, i32* %13, align 4
  br label %93

104:                                              ; preds = %93
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 2
  store i32 %106, i32* %13, align 4
  br label %107

107:                                              ; preds = %115, %104
  %108 = load i32, i32* %13, align 4
  %109 = icmp slt i32 %108, 24
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %8, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i32* @qlcnic_83xx_copy_stats(%struct.qlcnic_cmd_args* %111, i32* %112, i32 %113)
  store i32* %114, i32** %9, align 8
  br label %115

115:                                              ; preds = %110
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, 2
  store i32 %117, i32* %13, align 4
  br label %107

118:                                              ; preds = %107
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, 2
  store i32 %120, i32* %13, align 4
  br label %121

121:                                              ; preds = %130, %118
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %121
  %126 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %8, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = load i32, i32* %13, align 4
  %129 = call i32* @qlcnic_83xx_copy_stats(%struct.qlcnic_cmd_args* %126, i32* %127, i32 %128)
  store i32* %129, i32** %9, align 8
  br label %130

130:                                              ; preds = %125
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %131, 2
  store i32 %132, i32* %13, align 4
  br label %121

133:                                              ; preds = %121
  br label %171

134:                                              ; preds = %32
  store i32 2, i32* %13, align 4
  br label %135

135:                                              ; preds = %143, %134
  %136 = load i32, i32* %13, align 4
  %137 = icmp slt i32 %136, 10
  br i1 %137, label %138, label %146

138:                                              ; preds = %135
  %139 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %8, align 8
  %140 = load i32*, i32** %9, align 8
  %141 = load i32, i32* %13, align 4
  %142 = call i32* @qlcnic_83xx_copy_stats(%struct.qlcnic_cmd_args* %139, i32* %140, i32 %141)
  store i32* %142, i32** %9, align 8
  br label %143

143:                                              ; preds = %138
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 2
  store i32 %145, i32* %13, align 4
  br label %135

146:                                              ; preds = %135
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %147, 2
  store i32 %148, i32* %13, align 4
  br label %149

149:                                              ; preds = %158, %146
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* %14, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %149
  %154 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %8, align 8
  %155 = load i32*, i32** %9, align 8
  %156 = load i32, i32* %13, align 4
  %157 = call i32* @qlcnic_83xx_copy_stats(%struct.qlcnic_cmd_args* %154, i32* %155, i32 %156)
  store i32* %157, i32** %9, align 8
  br label %158

158:                                              ; preds = %153
  %159 = load i32, i32* %13, align 4
  %160 = add nsw i32 %159, 2
  store i32 %160, i32* %13, align 4
  br label %149

161:                                              ; preds = %149
  br label %171

162:                                              ; preds = %32
  %163 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %164 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %163, i32 0, i32 0
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = call i32 @dev_warn(i32* %166, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %168 = load i32, i32* @EIO, align 4
  %169 = sub nsw i32 0, %168
  %170 = load i32*, i32** %11, align 8
  store i32 %169, i32* %170, align 4
  br label %171

171:                                              ; preds = %162, %161, %133, %91
  %172 = load i32*, i32** %9, align 8
  store i32* %172, i32** %6, align 8
  br label %173

173:                                              ; preds = %171, %22
  %174 = load i32*, i32** %6, align 8
  ret i32* %174
}

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32* @qlcnic_83xx_copy_stats(%struct.qlcnic_cmd_args*, i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
