; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_sys.c_qeth_l3_parse_ipatoe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_sys.c_qeth_l3_parse_ipatoe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@QETH_PROT_IPV4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32*)* @qeth_l3_parse_ipatoe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_parse_ipatoe(i8* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [40 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = bitcast [40 x i8]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 40, i1 false)
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 47)
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load i8*, i8** %11, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = icmp sge i64 %25, 40
  br i1 %26, label %27, label %30

27:                                               ; preds = %20, %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %74

30:                                               ; preds = %20
  %31 = getelementptr inbounds [40 x i8], [40 x i8]* %13, i64 0, i64 0
  %32 = load i8*, i8** %10, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @strncpy(i8* %31, i8* %32, i32 %38)
  %40 = getelementptr inbounds [40 x i8], [40 x i8]* %13, i64 0, i64 0
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = call i64 @qeth_l3_string_to_ipaddr(i8* %40, i32 %41, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %30
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %74

48:                                               ; preds = %30
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8* %50, i8** %10, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @simple_strtoul(i8* %51, i8** %12, i32 10)
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %48
  %58 = load i8*, i8** %12, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = icmp eq i8* %58, %59
  br i1 %60, label %70, label %61

61:                                               ; preds = %57
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @QETH_PROT_IPV4, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 32, i32 128
  %69 = icmp sgt i32 %63, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %61, %57, %48
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %74

73:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %70, %45, %27
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i64 @qeth_l3_string_to_ipaddr(i8*, i32, i32*) #2

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #2

declare dso_local i32 @strlen(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
