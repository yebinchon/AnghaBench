; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_page-types.c_usage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_page-types.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1534 x i8] c"page-types [options]\0A            -r|--raw                   Raw mode, for kernel developers\0A            -d|--describe flags        Describe flags\0A            -a|--addr    addr-spec     Walk a range of pages\0A            -b|--bits    bits-spec     Walk pages with specified bits\0A            -p|--pid     pid           Walk process address space\0A            -l|--list                  Show page details in ranges\0A            -L|--list-each             Show page details one by one\0A            -N|--no-summary            Don't show summary info\0A            -X|--hwpoison              hwpoison pages\0A            -x|--unpoison              unpoison pages\0A            -h|--help                  Show this usage message\0Aflags:\0A            0x10                       bitfield format, e.g.\0A            anon                       bit-name, e.g.\0A            0x10,anon                  comma-separated list, e.g.\0Aaddr-spec:\0A            N                          one page at offset N (unit: pages)\0A            N+M                        pages range from N to N+M-1\0A            N,M                        pages range from N to M-1\0A            N,                         pages range from N to end\0A            ,M                         pages range from 0 to M-1\0Abits-spec:\0A            bit1,bit2                  (flags & (bit1|bit2)) != 0\0A            bit1,bit2=bit1             (flags & (bit1|bit2)) == bit1\0A            bit1,~bit2                 (flags & (bit1|bit2)) == bit1\0A            =bit1,bit2                 flags == (bit1|bit2)\0Abit-names:\0A\00", align 1
@page_flag_names = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%16s%s\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"\0A                                   (r) raw mode bits  (o) overloaded bits\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([1534 x i8], [1534 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %35, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i8**, i8*** @page_flag_names, align 8
  %7 = call i32 @ARRAY_SIZE(i8** %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %38

9:                                                ; preds = %4
  %10 = load i8**, i8*** @page_flag_names, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8*, i8** %10, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  br label %35

17:                                               ; preds = %9
  %18 = load i8**, i8*** @page_flag_names, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  %24 = load i32, i32* %1, align 4
  %25 = zext i32 %24 to i64
  %26 = shl i64 1, %25
  %27 = call i32 @page_flag_type(i64 %26)
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %23, i32 %27)
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  %31 = icmp sgt i32 %30, 3
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  %33 = call i32 @putchar(i8 signext 10)
  br label %34

34:                                               ; preds = %32, %17
  br label %35

35:                                               ; preds = %34, %16
  %36 = load i32, i32* %1, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %1, align 4
  br label %4

38:                                               ; preds = %4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @page_flag_type(i64) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
