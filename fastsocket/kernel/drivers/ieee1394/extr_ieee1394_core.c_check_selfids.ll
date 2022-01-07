; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_core.c_check_selfids.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_core.c_check_selfids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i32, i32, i32, i64, i64 }
%struct.selfid = type { i32, i64, i64, i64, i64, i64, i32 }
%struct.ext_selfid = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [38 x i8] c"SelfIDs failed monotony check with %d\00", align 1
@LOCAL_BUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"SelfIDs failed monotony check with %d/%d\00", align 1
@SELFID_PORT_PARENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"SelfIDs failed root check on extended SelfID\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"SelfIDs failed root check\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpsb_host*)* @check_selfids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_selfids(%struct.hpsb_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hpsb_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.selfid*, align 8
  %7 = alloca %struct.ext_selfid*, align 8
  %8 = alloca i32, align 4
  store %struct.hpsb_host* %0, %struct.hpsb_host** %3, align 8
  store i32 -1, i32* %4, align 4
  %9 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %10 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %13 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.selfid*
  store %struct.selfid* %15, %struct.selfid** %6, align 8
  store i32 23, i32* %8, align 4
  %16 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %17 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %89, %1
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %5, align 4
  %21 = icmp ne i32 %19, 0
  br i1 %21, label %22, label %92

22:                                               ; preds = %18
  %23 = load %struct.selfid*, %struct.selfid** %6, align 8
  %24 = getelementptr inbounds %struct.selfid, %struct.selfid* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %64, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %30 = load %struct.selfid*, %struct.selfid** %6, align 8
  %31 = getelementptr inbounds %struct.selfid, %struct.selfid* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.selfid*, %struct.selfid** %6, align 8
  %37 = getelementptr inbounds %struct.selfid, %struct.selfid* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, ...) @HPSB_INFO(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 0, i32* %2, align 4
  br label %181

40:                                               ; preds = %27
  %41 = load %struct.selfid*, %struct.selfid** %6, align 8
  %42 = getelementptr inbounds %struct.selfid, %struct.selfid* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %47 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.selfid*, %struct.selfid** %6, align 8
  %51 = getelementptr inbounds %struct.selfid, %struct.selfid* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %45
  %55 = load i32, i32* @LOCAL_BUS, align 4
  %56 = load %struct.selfid*, %struct.selfid** %6, align 8
  %57 = getelementptr inbounds %struct.selfid, %struct.selfid* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %55, %58
  %60 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %61 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %54, %45
  br label %63

63:                                               ; preds = %62, %40
  br label %89

64:                                               ; preds = %22
  %65 = load %struct.selfid*, %struct.selfid** %6, align 8
  %66 = bitcast %struct.selfid* %65 to %struct.ext_selfid*
  store %struct.ext_selfid* %66, %struct.ext_selfid** %7, align 8
  %67 = load %struct.ext_selfid*, %struct.ext_selfid** %7, align 8
  %68 = getelementptr inbounds %struct.ext_selfid, %struct.ext_selfid* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %64
  %73 = load %struct.ext_selfid*, %struct.ext_selfid** %7, align 8
  %74 = getelementptr inbounds %struct.ext_selfid, %struct.ext_selfid* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %72, %64
  %79 = load %struct.ext_selfid*, %struct.ext_selfid** %7, align 8
  %80 = getelementptr inbounds %struct.ext_selfid, %struct.ext_selfid* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ext_selfid*, %struct.ext_selfid** %7, align 8
  %83 = getelementptr inbounds %struct.ext_selfid, %struct.ext_selfid* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, ...) @HPSB_INFO(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %84)
  store i32 0, i32* %2, align 4
  br label %181

86:                                               ; preds = %72
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %86, %63
  %90 = load %struct.selfid*, %struct.selfid** %6, align 8
  %91 = getelementptr inbounds %struct.selfid, %struct.selfid* %90, i32 1
  store %struct.selfid* %91, %struct.selfid** %6, align 8
  br label %18

92:                                               ; preds = %18
  %93 = load %struct.selfid*, %struct.selfid** %6, align 8
  %94 = getelementptr inbounds %struct.selfid, %struct.selfid* %93, i64 -1
  %95 = bitcast %struct.selfid* %94 to %struct.ext_selfid*
  store %struct.ext_selfid* %95, %struct.ext_selfid** %7, align 8
  br label %96

96:                                               ; preds = %151, %92
  %97 = load %struct.ext_selfid*, %struct.ext_selfid** %7, align 8
  %98 = getelementptr inbounds %struct.ext_selfid, %struct.ext_selfid* %97, i32 0, i32 10
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %154

101:                                              ; preds = %96
  %102 = load %struct.ext_selfid*, %struct.ext_selfid** %7, align 8
  %103 = getelementptr inbounds %struct.ext_selfid, %struct.ext_selfid* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @SELFID_PORT_PARENT, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %149, label %107

107:                                              ; preds = %101
  %108 = load %struct.ext_selfid*, %struct.ext_selfid** %7, align 8
  %109 = getelementptr inbounds %struct.ext_selfid, %struct.ext_selfid* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @SELFID_PORT_PARENT, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %149, label %113

113:                                              ; preds = %107
  %114 = load %struct.ext_selfid*, %struct.ext_selfid** %7, align 8
  %115 = getelementptr inbounds %struct.ext_selfid, %struct.ext_selfid* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @SELFID_PORT_PARENT, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %149, label %119

119:                                              ; preds = %113
  %120 = load %struct.ext_selfid*, %struct.ext_selfid** %7, align 8
  %121 = getelementptr inbounds %struct.ext_selfid, %struct.ext_selfid* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @SELFID_PORT_PARENT, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %149, label %125

125:                                              ; preds = %119
  %126 = load %struct.ext_selfid*, %struct.ext_selfid** %7, align 8
  %127 = getelementptr inbounds %struct.ext_selfid, %struct.ext_selfid* %126, i32 0, i32 6
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @SELFID_PORT_PARENT, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %149, label %131

131:                                              ; preds = %125
  %132 = load %struct.ext_selfid*, %struct.ext_selfid** %7, align 8
  %133 = getelementptr inbounds %struct.ext_selfid, %struct.ext_selfid* %132, i32 0, i32 7
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @SELFID_PORT_PARENT, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %149, label %137

137:                                              ; preds = %131
  %138 = load %struct.ext_selfid*, %struct.ext_selfid** %7, align 8
  %139 = getelementptr inbounds %struct.ext_selfid, %struct.ext_selfid* %138, i32 0, i32 8
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @SELFID_PORT_PARENT, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %149, label %143

143:                                              ; preds = %137
  %144 = load %struct.ext_selfid*, %struct.ext_selfid** %7, align 8
  %145 = getelementptr inbounds %struct.ext_selfid, %struct.ext_selfid* %144, i32 0, i32 9
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @SELFID_PORT_PARENT, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %143, %137, %131, %125, %119, %113, %107, %101
  %150 = call i32 (i8*, ...) @HPSB_INFO(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %181

151:                                              ; preds = %143
  %152 = load %struct.ext_selfid*, %struct.ext_selfid** %7, align 8
  %153 = getelementptr inbounds %struct.ext_selfid, %struct.ext_selfid* %152, i32 -1
  store %struct.ext_selfid* %153, %struct.ext_selfid** %7, align 8
  br label %96

154:                                              ; preds = %96
  %155 = load %struct.ext_selfid*, %struct.ext_selfid** %7, align 8
  %156 = bitcast %struct.ext_selfid* %155 to %struct.selfid*
  store %struct.selfid* %156, %struct.selfid** %6, align 8
  %157 = load %struct.selfid*, %struct.selfid** %6, align 8
  %158 = getelementptr inbounds %struct.selfid, %struct.selfid* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @SELFID_PORT_PARENT, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %174, label %162

162:                                              ; preds = %154
  %163 = load %struct.selfid*, %struct.selfid** %6, align 8
  %164 = getelementptr inbounds %struct.selfid, %struct.selfid* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @SELFID_PORT_PARENT, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %174, label %168

168:                                              ; preds = %162
  %169 = load %struct.selfid*, %struct.selfid** %6, align 8
  %170 = getelementptr inbounds %struct.selfid, %struct.selfid* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @SELFID_PORT_PARENT, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %168, %162, %154
  %175 = call i32 (i8*, ...) @HPSB_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %181

176:                                              ; preds = %168
  %177 = load i32, i32* %4, align 4
  %178 = add nsw i32 %177, 1
  %179 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %180 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  store i32 1, i32* %2, align 4
  br label %181

181:                                              ; preds = %176, %174, %149, %78, %35
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @HPSB_INFO(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
