; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_choose_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_choose_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as_data = type { i64* }
%struct.request = type { i32 }

@MAXBACK = common dso_local global i64 0, align 8
@BACK_PENALTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request* (%struct.as_data*, %struct.request*, %struct.request*)* @as_choose_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request* @as_choose_req(%struct.as_data* %0, %struct.request* %1, %struct.request* %2) #0 {
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.as_data*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.as_data* %0, %struct.as_data** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store %struct.request* %2, %struct.request** %7, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %17 = load i64, i64* @MAXBACK, align 8
  store i64 %17, i64* %16, align 8
  %18 = load %struct.request*, %struct.request** %6, align 8
  %19 = icmp eq %struct.request* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load %struct.request*, %struct.request** %6, align 8
  %22 = load %struct.request*, %struct.request** %7, align 8
  %23 = icmp eq %struct.request* %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %3
  %25 = load %struct.request*, %struct.request** %7, align 8
  store %struct.request* %25, %struct.request** %4, align 8
  br label %146

26:                                               ; preds = %20
  %27 = load %struct.request*, %struct.request** %7, align 8
  %28 = icmp eq %struct.request* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load %struct.request*, %struct.request** %6, align 8
  store %struct.request* %30, %struct.request** %4, align 8
  br label %146

31:                                               ; preds = %26
  %32 = load %struct.request*, %struct.request** %6, align 8
  %33 = call i32 @rq_is_sync(%struct.request* %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.as_data*, %struct.as_data** %5, align 8
  %35 = getelementptr inbounds %struct.as_data, %struct.as_data* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %9, align 8
  %41 = load %struct.request*, %struct.request** %6, align 8
  %42 = call i64 @blk_rq_pos(%struct.request* %41)
  store i64 %42, i64* %10, align 8
  %43 = load %struct.request*, %struct.request** %7, align 8
  %44 = call i64 @blk_rq_pos(%struct.request* %43)
  store i64 %44, i64* %11, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.request*, %struct.request** %7, align 8
  %47 = call i32 @rq_is_sync(%struct.request* %46)
  %48 = icmp ne i32 %45, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @BUG_ON(i32 %49)
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %31
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %9, align 8
  %57 = sub nsw i64 %55, %56
  store i64 %57, i64* %12, align 8
  br label %72

58:                                               ; preds = %31
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %16, align 8
  %61 = add nsw i64 %59, %60
  %62 = load i64, i64* %9, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = sub nsw i64 %65, %66
  %68 = load i64, i64* @BACK_PENALTY, align 8
  %69 = mul nsw i64 %67, %68
  store i64 %69, i64* %12, align 8
  br label %71

70:                                               ; preds = %58
  store i32 1, i32* %14, align 4
  store i64 0, i64* %12, align 8
  br label %71

71:                                               ; preds = %70, %64
  br label %72

72:                                               ; preds = %71, %54
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %9, align 8
  %75 = icmp sge i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* %9, align 8
  %79 = sub nsw i64 %77, %78
  store i64 %79, i64* %13, align 8
  br label %94

80:                                               ; preds = %72
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %16, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i64, i64* %9, align 8
  %85 = icmp sge i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %11, align 8
  %89 = sub nsw i64 %87, %88
  %90 = load i64, i64* @BACK_PENALTY, align 8
  %91 = mul nsw i64 %89, %90
  store i64 %91, i64* %13, align 8
  br label %93

92:                                               ; preds = %80
  store i32 1, i32* %15, align 4
  store i64 0, i64* %13, align 8
  br label %93

93:                                               ; preds = %92, %86
  br label %94

94:                                               ; preds = %93, %76
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %15, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load %struct.request*, %struct.request** %6, align 8
  store %struct.request* %101, %struct.request** %4, align 8
  br label %146

102:                                              ; preds = %97, %94
  %103 = load i32, i32* %15, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load %struct.request*, %struct.request** %7, align 8
  store %struct.request* %109, %struct.request** %4, align 8
  br label %146

110:                                              ; preds = %105, %102
  %111 = load i32, i32* %14, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %110
  %114 = load i32, i32* %15, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* %11, align 8
  %119 = icmp sle i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load %struct.request*, %struct.request** %6, align 8
  store %struct.request* %121, %struct.request** %4, align 8
  br label %146

122:                                              ; preds = %116
  %123 = load %struct.request*, %struct.request** %7, align 8
  store %struct.request* %123, %struct.request** %4, align 8
  br label %146

124:                                              ; preds = %113, %110
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125
  %127 = load i64, i64* %12, align 8
  %128 = load i64, i64* %13, align 8
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load %struct.request*, %struct.request** %6, align 8
  store %struct.request* %131, %struct.request** %4, align 8
  br label %146

132:                                              ; preds = %126
  %133 = load i64, i64* %13, align 8
  %134 = load i64, i64* %12, align 8
  %135 = icmp slt i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load %struct.request*, %struct.request** %7, align 8
  store %struct.request* %137, %struct.request** %4, align 8
  br label %146

138:                                              ; preds = %132
  %139 = load i64, i64* %10, align 8
  %140 = load i64, i64* %11, align 8
  %141 = icmp sge i64 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = load %struct.request*, %struct.request** %6, align 8
  store %struct.request* %143, %struct.request** %4, align 8
  br label %146

144:                                              ; preds = %138
  %145 = load %struct.request*, %struct.request** %7, align 8
  store %struct.request* %145, %struct.request** %4, align 8
  br label %146

146:                                              ; preds = %144, %142, %136, %130, %122, %120, %108, %100, %29, %24
  %147 = load %struct.request*, %struct.request** %4, align 8
  ret %struct.request* %147
}

declare dso_local i32 @rq_is_sync(%struct.request*) #1

declare dso_local i64 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
