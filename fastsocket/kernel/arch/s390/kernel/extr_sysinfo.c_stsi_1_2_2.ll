; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_sysinfo.c_stsi_1_2_2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_sysinfo.c_stsi_1_2_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysinfo_1_2_2 = type { i32, i32, i32, i32, i32, i32, i32*, i32, i64 }
%struct.sysinfo_1_2_2_extension = type { i32, i32* }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"CPUs Total:           %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"CPUs Configured:      %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"CPUs Standby:         %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"CPUs Reserved:        %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Capability:           %u %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Adjustment %02d-way:    %u %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Capability:           %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Adjustment %02d-way:    %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Secondary Capability: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysinfo_1_2_2*, i8*, i32)* @stsi_1_2_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stsi_1_2_2(%struct.sysinfo_1_2_2* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sysinfo_1_2_2*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sysinfo_1_2_2_extension*, align 8
  %9 = alloca i32, align 4
  store %struct.sysinfo_1_2_2* %0, %struct.sysinfo_1_2_2** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sysinfo_1_2_2*, %struct.sysinfo_1_2_2** %5, align 8
  %11 = call i32 @stsi(%struct.sysinfo_1_2_2* %10, i32 1, i32 2, i32 2)
  %12 = load i32, i32* @ENOSYS, align 4
  %13 = sub nsw i32 0, %12
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %4, align 4
  br label %201

17:                                               ; preds = %3
  %18 = load %struct.sysinfo_1_2_2*, %struct.sysinfo_1_2_2** %5, align 8
  %19 = ptrtoint %struct.sysinfo_1_2_2* %18 to i64
  %20 = load %struct.sysinfo_1_2_2*, %struct.sysinfo_1_2_2** %5, align 8
  %21 = getelementptr inbounds %struct.sysinfo_1_2_2, %struct.sysinfo_1_2_2* %20, i32 0, i32 8
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %19, %22
  %24 = inttoptr i64 %23 to %struct.sysinfo_1_2_2_extension*
  store %struct.sysinfo_1_2_2_extension* %24, %struct.sysinfo_1_2_2_extension** %8, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = call i64 (i8*, i8*, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load %struct.sysinfo_1_2_2*, %struct.sysinfo_1_2_2** %5, align 8
  %39 = getelementptr inbounds %struct.sysinfo_1_2_2, %struct.sysinfo_1_2_2* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %7, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load %struct.sysinfo_1_2_2*, %struct.sysinfo_1_2_2** %5, align 8
  %51 = getelementptr inbounds %struct.sysinfo_1_2_2, %struct.sysinfo_1_2_2* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 (i8*, i8*, ...) @sprintf(i8* %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %7, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load %struct.sysinfo_1_2_2*, %struct.sysinfo_1_2_2** %5, align 8
  %63 = getelementptr inbounds %struct.sysinfo_1_2_2, %struct.sysinfo_1_2_2* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i64 (i8*, i8*, ...) @sprintf(i8* %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %7, align 4
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load %struct.sysinfo_1_2_2*, %struct.sysinfo_1_2_2** %5, align 8
  %75 = getelementptr inbounds %struct.sysinfo_1_2_2, %struct.sysinfo_1_2_2* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i64 (i8*, i8*, ...) @sprintf(i8* %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %7, align 4
  %82 = load %struct.sysinfo_1_2_2*, %struct.sysinfo_1_2_2** %5, align 8
  %83 = getelementptr inbounds %struct.sysinfo_1_2_2, %struct.sysinfo_1_2_2* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %139

86:                                               ; preds = %17
  %87 = load i8*, i8** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load %struct.sysinfo_1_2_2*, %struct.sysinfo_1_2_2** %5, align 8
  %92 = getelementptr inbounds %struct.sysinfo_1_2_2, %struct.sysinfo_1_2_2* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.sysinfo_1_2_2_extension*, %struct.sysinfo_1_2_2_extension** %8, align 8
  %95 = getelementptr inbounds %struct.sysinfo_1_2_2_extension, %struct.sysinfo_1_2_2_extension* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i64 (i8*, i8*, ...) @sprintf(i8* %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %93, i32 %96)
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %7, align 4
  store i32 2, i32* %9, align 4
  br label %102

102:                                              ; preds = %135, %86
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.sysinfo_1_2_2*, %struct.sysinfo_1_2_2** %5, align 8
  %105 = getelementptr inbounds %struct.sysinfo_1_2_2, %struct.sysinfo_1_2_2* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp sle i32 %103, %106
  br i1 %107, label %108, label %138

108:                                              ; preds = %102
  %109 = load i8*, i8** %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.sysinfo_1_2_2*, %struct.sysinfo_1_2_2** %5, align 8
  %115 = getelementptr inbounds %struct.sysinfo_1_2_2, %struct.sysinfo_1_2_2* %114, i32 0, i32 6
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sub nsw i32 %117, 2
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.sysinfo_1_2_2_extension*, %struct.sysinfo_1_2_2_extension** %8, align 8
  %123 = getelementptr inbounds %struct.sysinfo_1_2_2_extension, %struct.sysinfo_1_2_2_extension* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sub nsw i32 %125, 2
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i64 (i8*, i8*, ...) @sprintf(i8* %112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %113, i32 %121, i32 %129)
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %132, %130
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %108
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %102

138:                                              ; preds = %102
  br label %181

139:                                              ; preds = %17
  %140 = load i8*, i8** %6, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load %struct.sysinfo_1_2_2*, %struct.sysinfo_1_2_2** %5, align 8
  %145 = getelementptr inbounds %struct.sysinfo_1_2_2, %struct.sysinfo_1_2_2* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = call i64 (i8*, i8*, ...) @sprintf(i8* %143, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %149, %147
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %7, align 4
  store i32 2, i32* %9, align 4
  br label %152

152:                                              ; preds = %177, %139
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.sysinfo_1_2_2*, %struct.sysinfo_1_2_2** %5, align 8
  %155 = getelementptr inbounds %struct.sysinfo_1_2_2, %struct.sysinfo_1_2_2* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp sle i32 %153, %156
  br i1 %157, label %158, label %180

158:                                              ; preds = %152
  %159 = load i8*, i8** %6, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.sysinfo_1_2_2*, %struct.sysinfo_1_2_2** %5, align 8
  %165 = getelementptr inbounds %struct.sysinfo_1_2_2, %struct.sysinfo_1_2_2* %164, i32 0, i32 6
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sub nsw i32 %167, 2
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = call i64 (i8*, i8*, ...) @sprintf(i8* %162, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %163, i32 %171)
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %174, %172
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %7, align 4
  br label %177

177:                                              ; preds = %158
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %9, align 4
  br label %152

180:                                              ; preds = %152
  br label %181

181:                                              ; preds = %180, %138
  %182 = load %struct.sysinfo_1_2_2*, %struct.sysinfo_1_2_2** %5, align 8
  %183 = getelementptr inbounds %struct.sysinfo_1_2_2, %struct.sysinfo_1_2_2* %182, i32 0, i32 7
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %199

186:                                              ; preds = %181
  %187 = load i8*, i8** %6, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  %191 = load %struct.sysinfo_1_2_2*, %struct.sysinfo_1_2_2** %5, align 8
  %192 = getelementptr inbounds %struct.sysinfo_1_2_2, %struct.sysinfo_1_2_2* %191, i32 0, i32 7
  %193 = load i32, i32* %192, align 8
  %194 = call i64 (i8*, i8*, ...) @sprintf(i8* %190, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %193)
  %195 = load i32, i32* %7, align 4
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 %196, %194
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %7, align 4
  br label %199

199:                                              ; preds = %186, %181
  %200 = load i32, i32* %7, align 4
  store i32 %200, i32* %4, align 4
  br label %201

201:                                              ; preds = %199, %15
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

declare dso_local i32 @stsi(%struct.sysinfo_1_2_2*, i32, i32, i32) #1

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
