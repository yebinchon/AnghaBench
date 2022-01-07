; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_bsdcomp.c_bsd_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_bsdcomp.c_bsd_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isdn_ppp_comp_data = type { i32, i64, i32, i32* }
%struct.bsd_db = type { i32, i32, i32, i32, i32, i32, i32*, i8* }

@bsd_alloc.htab = internal global [8 x [2 x i32]] [[2 x i32] [i32 5003, i32 4], [2 x i32] [i32 5003, i32 4], [2 x i32] [i32 5003, i32 4], [2 x i32] [i32 5003, i32 4], [2 x i32] [i32 9001, i32 5], [2 x i32] [i32 18013, i32 6], [2 x i32] [i32 35023, i32 7], [2 x i32] [i32 69001, i32 8]], align 16
@CI_BSD_COMPRESS = common dso_local global i64 0, align 8
@BSD_CURRENT_VERSION = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@IPPP_COMP_FLAG_XMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.isdn_ppp_comp_data*)* @bsd_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bsd_alloc(%struct.isdn_ppp_comp_data* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.isdn_ppp_comp_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bsd_db*, align 8
  %9 = alloca i32, align 4
  store %struct.isdn_ppp_comp_data* %0, %struct.isdn_ppp_comp_data** %3, align 8
  %10 = load %struct.isdn_ppp_comp_data*, %struct.isdn_ppp_comp_data** %3, align 8
  %11 = getelementptr inbounds %struct.isdn_ppp_comp_data, %struct.isdn_ppp_comp_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %29, label %14

14:                                               ; preds = %1
  %15 = load %struct.isdn_ppp_comp_data*, %struct.isdn_ppp_comp_data** %3, align 8
  %16 = getelementptr inbounds %struct.isdn_ppp_comp_data, %struct.isdn_ppp_comp_data* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CI_BSD_COMPRESS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %29, label %20

20:                                               ; preds = %14
  %21 = load %struct.isdn_ppp_comp_data*, %struct.isdn_ppp_comp_data** %3, align 8
  %22 = getelementptr inbounds %struct.isdn_ppp_comp_data, %struct.isdn_ppp_comp_data* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @BSD_VERSION(i32 %25)
  %27 = load i64, i64* @BSD_CURRENT_VERSION, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20, %14, %1
  store i8* null, i8** %2, align 8
  br label %137

30:                                               ; preds = %20
  %31 = load %struct.isdn_ppp_comp_data*, %struct.isdn_ppp_comp_data** %3, align 8
  %32 = getelementptr inbounds %struct.isdn_ppp_comp_data, %struct.isdn_ppp_comp_data* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @BSD_NBITS(i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 9
  br i1 %38, label %42, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %4, align 4
  %41 = icmp sgt i32 %40, 15
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %30
  store i8* null, i8** %2, align 8
  br label %137

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = sub nsw i32 %44, 9
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* @bsd_alloc.htab, i64 0, i64 %46
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %47, i64 0, i64 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = sub nsw i32 %50, 9
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* @bsd_alloc.htab, i64 0, i64 %52
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %53, i64 0, i64 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @MAXCODE(i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.bsd_db* @kzalloc(i32 40, i32 %58)
  store %struct.bsd_db* %59, %struct.bsd_db** %8, align 8
  %60 = load %struct.bsd_db*, %struct.bsd_db** %8, align 8
  %61 = icmp ne %struct.bsd_db* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %43
  store i8* null, i8** %2, align 8
  br label %137

63:                                               ; preds = %43
  %64 = load %struct.isdn_ppp_comp_data*, %struct.isdn_ppp_comp_data** %3, align 8
  %65 = getelementptr inbounds %struct.isdn_ppp_comp_data, %struct.isdn_ppp_comp_data* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @IPPP_COMP_FLAG_XMIT, align 4
  %68 = and i32 %66, %67
  %69 = load %struct.bsd_db*, %struct.bsd_db** %8, align 8
  %70 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.bsd_db*, %struct.bsd_db** %8, align 8
  %72 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 0, i32 1
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %5, align 4
  %78 = zext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = trunc i64 %79 to i32
  %81 = call i8* @vmalloc(i32 %80)
  %82 = load %struct.bsd_db*, %struct.bsd_db** %8, align 8
  %83 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %82, i32 0, i32 7
  store i8* %81, i8** %83, align 8
  %84 = load %struct.bsd_db*, %struct.bsd_db** %8, align 8
  %85 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %84, i32 0, i32 7
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %63
  %89 = load %struct.bsd_db*, %struct.bsd_db** %8, align 8
  %90 = call i32 @bsd_free(%struct.bsd_db* %89)
  store i8* null, i8** %2, align 8
  br label %137

91:                                               ; preds = %63
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load %struct.bsd_db*, %struct.bsd_db** %8, align 8
  %96 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %95, i32 0, i32 6
  store i32* null, i32** %96, align 8
  br label %115

97:                                               ; preds = %91
  %98 = load i32, i32* %7, align 4
  %99 = add i32 %98, 1
  %100 = zext i32 %99 to i64
  %101 = mul i64 %100, 4
  %102 = trunc i64 %101 to i32
  %103 = call i8* @vmalloc(i32 %102)
  %104 = bitcast i8* %103 to i32*
  %105 = load %struct.bsd_db*, %struct.bsd_db** %8, align 8
  %106 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %105, i32 0, i32 6
  store i32* %104, i32** %106, align 8
  %107 = load %struct.bsd_db*, %struct.bsd_db** %8, align 8
  %108 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %107, i32 0, i32 6
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %97
  %112 = load %struct.bsd_db*, %struct.bsd_db** %8, align 8
  %113 = call i32 @bsd_free(%struct.bsd_db* %112)
  store i8* null, i8** %2, align 8
  br label %137

114:                                              ; preds = %97
  br label %115

115:                                              ; preds = %114, %94
  %116 = load i32, i32* %5, align 4
  %117 = zext i32 %116 to i64
  %118 = mul i64 4, %117
  %119 = add i64 40, %118
  %120 = trunc i64 %119 to i32
  %121 = load %struct.bsd_db*, %struct.bsd_db** %8, align 8
  %122 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %5, align 4
  %124 = load %struct.bsd_db*, %struct.bsd_db** %8, align 8
  %125 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* %6, align 4
  %127 = load %struct.bsd_db*, %struct.bsd_db** %8, align 8
  %128 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.bsd_db*, %struct.bsd_db** %8, align 8
  %131 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* %4, align 4
  %133 = load %struct.bsd_db*, %struct.bsd_db** %8, align 8
  %134 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 4
  %135 = load %struct.bsd_db*, %struct.bsd_db** %8, align 8
  %136 = bitcast %struct.bsd_db* %135 to i8*
  store i8* %136, i8** %2, align 8
  br label %137

137:                                              ; preds = %115, %111, %88, %62, %42, %29
  %138 = load i8*, i8** %2, align 8
  ret i8* %138
}

declare dso_local i64 @BSD_VERSION(i32) #1

declare dso_local i32 @BSD_NBITS(i32) #1

declare dso_local i32 @MAXCODE(i32) #1

declare dso_local %struct.bsd_db* @kzalloc(i32, i32) #1

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @bsd_free(%struct.bsd_db*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
