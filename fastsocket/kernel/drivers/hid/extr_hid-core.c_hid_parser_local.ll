; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_parser_local.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_parser_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_parser = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hid_item = type { i64, i32 }

@.str = private unnamed_addr constant [35 x i8] c"item data expected for local item\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"nested delimiters\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"bogus close delimiter\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"alternative usage ignored\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"hid_add_usage failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"unknown local item tag 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_parser*, %struct.hid_item*)* @hid_parser_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_parser_local(%struct.hid_parser* %0, %struct.hid_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_parser*, align 8
  %5 = alloca %struct.hid_item*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hid_parser* %0, %struct.hid_parser** %4, align 8
  store %struct.hid_item* %1, %struct.hid_item** %5, align 8
  %8 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %9 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @dbg_hid(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %155

14:                                               ; preds = %2
  %15 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %16 = call i32 @item_udata(%struct.hid_item* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %18 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %150 [
    i32 131, label %20
    i32 130, label %57
    i32 128, label %82
    i32 129, label %108
  ]

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %20
  %24 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %25 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 (i8*, ...) @dbg_hid(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %155

31:                                               ; preds = %23
  %32 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %33 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %38 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %56

42:                                               ; preds = %20
  %43 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %44 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = call i32 (i8*, ...) @dbg_hid(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %155

50:                                               ; preds = %42
  %51 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %52 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50, %31
  store i32 1, i32* %3, align 4
  br label %155

57:                                               ; preds = %14
  %58 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %59 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = call i32 (i8*, ...) @dbg_hid(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %155

65:                                               ; preds = %57
  %66 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %67 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sle i64 %68, 2
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %72 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 16
  %76 = load i32, i32* %6, align 4
  %77 = add i32 %75, %76
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %70, %65
  %79 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @hid_add_usage(%struct.hid_parser* %79, i32 %80)
  store i32 %81, i32* %3, align 4
  br label %155

82:                                               ; preds = %14
  %83 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %84 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %86, 1
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = call i32 (i8*, ...) @dbg_hid(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %155

90:                                               ; preds = %82
  %91 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %92 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp sle i64 %93, 2
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %97 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %99, 16
  %101 = load i32, i32* %6, align 4
  %102 = add i32 %100, %101
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %95, %90
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %106 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  store i32 %104, i32* %107, align 4
  store i32 0, i32* %3, align 4
  br label %155

108:                                              ; preds = %14
  %109 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %110 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp sgt i32 %112, 1
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = call i32 (i8*, ...) @dbg_hid(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %155

116:                                              ; preds = %108
  %117 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %118 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp sle i64 %119, 2
  br i1 %120, label %121, label %129

121:                                              ; preds = %116
  %122 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %123 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 %125, 16
  %127 = load i32, i32* %6, align 4
  %128 = add i32 %126, %127
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %121, %116
  %130 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %131 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %146, %129
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp ule i32 %135, %136
  br i1 %137, label %138, label %149

138:                                              ; preds = %134
  %139 = load %struct.hid_parser*, %struct.hid_parser** %4, align 8
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @hid_add_usage(%struct.hid_parser* %139, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = call i32 (i8*, ...) @dbg_hid(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %155

145:                                              ; preds = %138
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %7, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %134

149:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %155

150:                                              ; preds = %14
  %151 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %152 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (i8*, ...) @dbg_hid(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %153)
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %150, %149, %143, %114, %103, %88, %78, %63, %56, %48, %29, %12
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @dbg_hid(i8*, ...) #1

declare dso_local i32 @item_udata(%struct.hid_item*) #1

declare dso_local i32 @hid_add_usage(%struct.hid_parser*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
