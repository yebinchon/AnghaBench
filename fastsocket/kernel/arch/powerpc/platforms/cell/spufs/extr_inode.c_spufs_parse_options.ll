; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_parse_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@spufs_tokens = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, %struct.inode*)* @spufs_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spufs_parse_options(%struct.super_block* %0, i8* %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  %14 = load i32, i32* @MAX_OPT_ARGS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  br label %18

18:                                               ; preds = %65, %25, %3
  %19 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %19, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %66

21:                                               ; preds = %18
  %22 = load i8*, i8** %8, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %18

26:                                               ; preds = %21
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* @spufs_tokens, align 4
  %29 = call i32 @match_token(i8* %27, i32 %28, i32* %17)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  switch i32 %30, label %64 [
    i32 128, label %31
    i32 130, label %40
    i32 129, label %49
    i32 131, label %60
  ]

31:                                               ; preds = %26
  %32 = getelementptr inbounds i32, i32* %17, i64 0
  %33 = call i32 @match_int(i32* %32, i32* %12)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %67

36:                                               ; preds = %31
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.inode*, %struct.inode** %7, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %65

40:                                               ; preds = %26
  %41 = getelementptr inbounds i32, i32* %17, i64 0
  %42 = call i32 @match_int(i32* %41, i32* %12)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %67

45:                                               ; preds = %40
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %65

49:                                               ; preds = %26
  %50 = getelementptr inbounds i32, i32* %17, i64 0
  %51 = call i32 @match_octal(i32* %50, i32* %12)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %67

54:                                               ; preds = %49
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @S_IFDIR, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  br label %65

60:                                               ; preds = %26
  %61 = load %struct.super_block*, %struct.super_block** %5, align 8
  %62 = call %struct.TYPE_2__* @spufs_get_sb_info(%struct.super_block* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 4
  br label %65

64:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %67

65:                                               ; preds = %60, %54, %45, %36
  br label %18

66:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %67

67:                                               ; preds = %66, %64, %53, %44, %35
  %68 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @match_int(i32*, i32*) #2

declare dso_local i32 @match_octal(i32*, i32*) #2

declare dso_local %struct.TYPE_2__* @spufs_get_sb_info(%struct.super_block*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
