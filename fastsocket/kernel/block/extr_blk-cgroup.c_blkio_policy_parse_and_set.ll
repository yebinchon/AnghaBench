; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkio_policy_parse_and_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkio_policy_parse_and_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkio_policy_node = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.gendisk = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BLKIO_WEIGHT_MIN = common dso_local global i64 0, align 8
@BLKIO_WEIGHT_MAX = common dso_local global i64 0, align 8
@THROTL_IOPS_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.blkio_policy_node*, i32, i32)* @blkio_policy_parse_and_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkio_policy_parse_and_set(i8* %0, %struct.blkio_policy_node* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.blkio_policy_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gendisk*, align 8
  %11 = alloca [4 x i8*], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store %struct.blkio_policy_node* %1, %struct.blkio_policy_node** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.gendisk* null, %struct.gendisk** %10, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %18, align 4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %19, align 4
  %26 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 0
  %27 = call i32 @memset(i8** %26, i32 0, i32 32)
  br label %28

28:                                               ; preds = %45, %35, %4
  %29 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %12, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load i8*, i8** %12, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %28

36:                                               ; preds = %31
  %37 = load i8*, i8** %12, align 8
  %38 = load i32, i32* %18, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %18, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 %40
  store i8* %37, i8** %41, align 8
  %42 = load i32, i32* %18, align 4
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %46

45:                                               ; preds = %36
  br label %28

46:                                               ; preds = %44, %28
  %47 = load i32, i32* %18, align 4
  %48 = icmp ne i32 %47, 2
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %175

50:                                               ; preds = %46
  %51 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 0
  %52 = call i8* @strsep(i8** %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i8*, i8** %12, align 8
  store i8* %56, i8** %13, align 8
  br label %58

57:                                               ; preds = %50
  br label %175

58:                                               ; preds = %55
  %59 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 0
  %60 = load i8*, i8** %59, align 16
  store i8* %60, i8** %14, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %175

64:                                               ; preds = %58
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 @strict_strtoul(i8* %65, i32 10, i64* %15)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %175

69:                                               ; preds = %64
  %70 = load i8*, i8** %14, align 8
  %71 = call i32 @strict_strtoul(i8* %70, i32 10, i64* %16)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %175

74:                                               ; preds = %69
  %75 = load i64, i64* %15, align 8
  %76 = load i64, i64* %16, align 8
  %77 = call i32 @MKDEV(i64 %75, i64 %76)
  store i32 %77, i32* %21, align 4
  %78 = load i32, i32* %21, align 4
  %79 = call %struct.gendisk* @get_gendisk(i32 %78, i32* %20)
  store %struct.gendisk* %79, %struct.gendisk** %10, align 8
  %80 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %81 = icmp ne %struct.gendisk* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i32, i32* %20, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82, %74
  %86 = load i32, i32* @ENODEV, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %19, align 4
  br label %175

88:                                               ; preds = %82
  %89 = load i32, i32* %21, align 4
  %90 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %7, align 8
  %91 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 1
  %93 = load i8*, i8** %92, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %5, align 4
  br label %179

98:                                               ; preds = %88
  %99 = load i32, i32* %8, align 4
  switch i32 %99, label %172 [
    i32 133, label %100
    i32 132, label %129
  ]

100:                                              ; preds = %98
  %101 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @strict_strtoul(i8* %102, i32 10, i64* %17)
  store i32 %103, i32* %19, align 4
  %104 = load i32, i32* %19, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %117, label %106

106:                                              ; preds = %100
  %107 = load i64, i64* %17, align 8
  %108 = load i64, i64* @BLKIO_WEIGHT_MIN, align 8
  %109 = icmp ult i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i64, i64* %17, align 8
  %112 = icmp ugt i64 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %110, %106
  %114 = load i64, i64* %17, align 8
  %115 = load i64, i64* @BLKIO_WEIGHT_MAX, align 8
  %116 = icmp ugt i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113, %110, %100
  br label %175

118:                                              ; preds = %113
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %7, align 8
  %121 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %7, align 8
  %124 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load i64, i64* %17, align 8
  %126 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %7, align 8
  %127 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  store i64 %125, i64* %128, align 8
  br label %174

129:                                              ; preds = %98
  %130 = load i32, i32* %9, align 4
  switch i32 %130, label %171 [
    i32 131, label %131
    i32 129, label %131
    i32 130, label %148
    i32 128, label %148
  ]

131:                                              ; preds = %129, %129
  %132 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 1
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @strict_strtoull(i8* %133, i32 10, i64* %22)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %175

137:                                              ; preds = %131
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %7, align 8
  %140 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %7, align 8
  %143 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load i64, i64* %22, align 8
  %145 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %7, align 8
  %146 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  store i64 %144, i64* %147, align 8
  br label %171

148:                                              ; preds = %129, %129
  %149 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 1
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @strict_strtoull(i8* %150, i32 10, i64* %23)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %175

154:                                              ; preds = %148
  %155 = load i64, i64* %23, align 8
  %156 = load i64, i64* @THROTL_IOPS_MAX, align 8
  %157 = icmp sgt i64 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  br label %175

159:                                              ; preds = %154
  %160 = load i32, i32* %8, align 4
  %161 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %7, align 8
  %162 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %7, align 8
  %165 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load i64, i64* %23, align 8
  %167 = trunc i64 %166 to i32
  %168 = load %struct.blkio_policy_node*, %struct.blkio_policy_node** %7, align 8
  %169 = getelementptr inbounds %struct.blkio_policy_node, %struct.blkio_policy_node* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 1
  store i32 %167, i32* %170, align 8
  br label %171

171:                                              ; preds = %129, %159, %137
  br label %174

172:                                              ; preds = %98
  %173 = call i32 (...) @BUG()
  br label %174

174:                                              ; preds = %172, %171, %118
  store i32 0, i32* %19, align 4
  br label %175

175:                                              ; preds = %174, %158, %153, %136, %117, %85, %73, %68, %63, %57, %49
  %176 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %177 = call i32 @put_disk(%struct.gendisk* %176)
  %178 = load i32, i32* %19, align 4
  store i32 %178, i32* %5, align 4
  br label %179

179:                                              ; preds = %175, %95
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @MKDEV(i64, i64) #1

declare dso_local %struct.gendisk* @get_gendisk(i32, i32*) #1

declare dso_local i32 @strict_strtoull(i8*, i32, i64*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
