; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_trim_slice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_trim_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_data = type { i32 }
%struct.throtl_grp = type { i64*, i64*, i64*, i64*, i64*, i32* }

@jiffies = common dso_local global i64 0, align 8
@throtl_slice = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [71 x i8] c"[%c] trim slice nr=%lu bytes=%llu io=%lu start=%lu end=%lu jiffies=%lu\00", align 1
@READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throtl_data*, %struct.throtl_grp*, i32)* @throtl_trim_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throtl_trim_slice(%struct.throtl_data* %0, %struct.throtl_grp* %1, i32 %2) #0 {
  %4 = alloca %struct.throtl_data*, align 8
  %5 = alloca %struct.throtl_grp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.throtl_data* %0, %struct.throtl_data** %4, align 8
  store %struct.throtl_grp* %1, %struct.throtl_grp** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %13 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %12, i32 0, i32 5
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %20 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @time_before(i32 %18, i64 %25)
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.throtl_data*, %struct.throtl_data** %4, align 8
  %29 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @throtl_slice_used(%struct.throtl_data* %28, %struct.throtl_grp* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %185

34:                                               ; preds = %3
  %35 = load %struct.throtl_data*, %struct.throtl_data** %4, align 8
  %36 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i64, i64* @jiffies, align 8
  %39 = load i64, i64* @throtl_slice, align 8
  %40 = add i64 %38, %39
  %41 = call i32 @throtl_set_slice_end(%struct.throtl_data* %35, %struct.throtl_grp* %36, i32 %37, i64 %40)
  %42 = load i64, i64* @jiffies, align 8
  %43 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %44 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %42, %49
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @throtl_slice, align 8
  %53 = udiv i64 %51, %52
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %34
  br label %185

57:                                               ; preds = %34
  %58 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %59 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @throtl_slice, align 8
  %66 = mul i64 %64, %65
  %67 = load i64, i64* %7, align 8
  %68 = mul i64 %66, %67
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* @HZ, align 8
  %71 = call i32 @do_div(i64 %69, i64 %70)
  %72 = load i64, i64* %11, align 8
  store i64 %72, i64* %10, align 8
  %73 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %74 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %73, i32 0, i32 2
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @throtl_slice, align 8
  %81 = mul i64 %79, %80
  %82 = load i64, i64* %7, align 8
  %83 = mul i64 %81, %82
  %84 = load i64, i64* @HZ, align 8
  %85 = udiv i64 %83, %84
  store i64 %85, i64* %9, align 8
  %86 = load i64, i64* %10, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %57
  %89 = load i64, i64* %9, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  br label %185

92:                                               ; preds = %88, %57
  %93 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %94 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %93, i32 0, i32 3
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %10, align 8
  %101 = icmp uge i64 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %92
  %103 = load i64, i64* %10, align 8
  %104 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %105 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %104, i32 0, i32 3
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = sub i64 %110, %103
  store i64 %111, i64* %109, align 8
  br label %119

112:                                              ; preds = %92
  %113 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %114 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %113, i32 0, i32 3
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %112, %102
  %120 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %121 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %120, i32 0, i32 4
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %9, align 8
  %128 = icmp uge i64 %126, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %119
  %130 = load i64, i64* %9, align 8
  %131 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %132 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %131, i32 0, i32 4
  %133 = load i64*, i64** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = sub i64 %137, %130
  store i64 %138, i64* %136, align 8
  br label %146

139:                                              ; preds = %119
  %140 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %141 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %140, i32 0, i32 4
  %142 = load i64*, i64** %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  store i64 0, i64* %145, align 8
  br label %146

146:                                              ; preds = %139, %129
  %147 = load i64, i64* %7, align 8
  %148 = load i64, i64* @throtl_slice, align 8
  %149 = mul i64 %147, %148
  %150 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %151 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %150, i32 0, i32 0
  %152 = load i64*, i64** %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = add i64 %156, %149
  store i64 %157, i64* %155, align 8
  %158 = load %struct.throtl_data*, %struct.throtl_data** %4, align 8
  %159 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* @READ, align 4
  %162 = icmp eq i32 %160, %161
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i32 82, i32 87
  %165 = trunc i32 %164 to i8
  %166 = load i64, i64* %7, align 8
  %167 = load i64, i64* %10, align 8
  %168 = load i64, i64* %9, align 8
  %169 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %170 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %169, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %177 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %176, i32 0, i32 5
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load i64, i64* @jiffies, align 8
  %184 = call i32 @throtl_log_tg(%struct.throtl_data* %158, %struct.throtl_grp* %159, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i8 signext %165, i64 %166, i64 %167, i64 %168, i64 %175, i32 %182, i64 %183)
  br label %185

185:                                              ; preds = %146, %91, %56, %33
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @time_before(i32, i64) #1

declare dso_local i64 @throtl_slice_used(%struct.throtl_data*, %struct.throtl_grp*, i32) #1

declare dso_local i32 @throtl_set_slice_end(%struct.throtl_data*, %struct.throtl_grp*, i32, i64) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i32 @throtl_log_tg(%struct.throtl_data*, %struct.throtl_grp*, i8*, i8 signext, i64, i64, i64, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
