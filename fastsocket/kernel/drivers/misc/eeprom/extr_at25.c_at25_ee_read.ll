; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/eeprom/extr_at25.c_at25_ee_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/eeprom/extr_at25.c_at25_ee_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at25_data = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.spi_transfer = type { i32, i8*, i32* }
%struct.spi_message = type { i32 }

@EE_MAXADDRLEN = common dso_local global i32 0, align 4
@AT25_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"read %Zd bytes at %d --> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.at25_data*, i8*, i32, i64)* @at25_ee_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @at25_ee_read(%struct.at25_data* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.at25_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [2 x %struct.spi_transfer], align 16
  %15 = alloca %struct.spi_message, align 4
  %16 = alloca i32, align 4
  store %struct.at25_data* %0, %struct.at25_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %17 = load i32, i32* @EE_MAXADDRLEN, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.at25_data*, %struct.at25_data** %6, align 8
  %24 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp uge i32 %22, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %132

32:                                               ; preds = %4
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %34, %35
  %37 = load %struct.at25_data*, %struct.at25_data** %6, align 8
  %38 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = zext i32 %40 to i64
  %42 = icmp ugt i64 %36, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %32
  %44 = load %struct.at25_data*, %struct.at25_data** %6, align 8
  %45 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sub i32 %47, %48
  %50 = zext i32 %49 to i64
  store i64 %50, i64* %9, align 8
  br label %51

51:                                               ; preds = %43, %32
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i64, i64* %9, align 8
  store i64 %59, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %132

60:                                               ; preds = %51
  store i32* %21, i32** %12, align 8
  %61 = load i32, i32* @AT25_READ, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %12, align 8
  store i32 %61, i32* %62, align 4
  %64 = load %struct.at25_data*, %struct.at25_data** %6, align 8
  %65 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %67 [
    i32 2, label %72
    i32 1, label %77
    i32 0, label %77
  ]

67:                                               ; preds = %60
  %68 = load i32, i32* %8, align 4
  %69 = lshr i32 %68, 16
  %70 = load i32*, i32** %12, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %12, align 8
  store i32 %69, i32* %70, align 4
  br label %72

72:                                               ; preds = %60, %67
  %73 = load i32, i32* %8, align 4
  %74 = lshr i32 %73, 8
  %75 = load i32*, i32** %12, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %12, align 8
  store i32 %74, i32* %75, align 4
  br label %77

77:                                               ; preds = %60, %60, %72
  %78 = load i32, i32* %8, align 4
  %79 = lshr i32 %78, 0
  %80 = load i32*, i32** %12, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %12, align 8
  store i32 %79, i32* %80, align 4
  br label %82

82:                                               ; preds = %77
  %83 = call i32 @spi_message_init(%struct.spi_message* %15)
  %84 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %85 = call i32 @memset(%struct.spi_transfer* %84, i32 0, i32 48)
  %86 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %87 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %86, i32 0, i32 2
  store i32* %21, i32** %87, align 16
  %88 = load %struct.at25_data*, %struct.at25_data** %6, align 8
  %89 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  %92 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %93 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 16
  %94 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 0
  %95 = call i32 @spi_message_add_tail(%struct.spi_transfer* %94, %struct.spi_message* %15)
  %96 = load i8*, i8** %7, align 8
  %97 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 1
  %98 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  %99 = load i64, i64* %9, align 8
  %100 = trunc i64 %99 to i32
  %101 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 1
  %102 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %14, i64 0, i64 1
  %104 = call i32 @spi_message_add_tail(%struct.spi_transfer* %103, %struct.spi_message* %15)
  %105 = load %struct.at25_data*, %struct.at25_data** %6, align 8
  %106 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %105, i32 0, i32 1
  %107 = call i32 @mutex_lock(i32* %106)
  %108 = load %struct.at25_data*, %struct.at25_data** %6, align 8
  %109 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %108, i32 0, i32 2
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = call i64 @spi_sync(%struct.TYPE_4__* %110, %struct.spi_message* %15)
  store i64 %111, i64* %13, align 8
  %112 = load %struct.at25_data*, %struct.at25_data** %6, align 8
  %113 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %112, i32 0, i32 2
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i64, i64* %9, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load i64, i64* %13, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i32 @dev_dbg(i32* %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %116, i32 %117, i32 %119)
  %121 = load %struct.at25_data*, %struct.at25_data** %6, align 8
  %122 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %121, i32 0, i32 1
  %123 = call i32 @mutex_unlock(i32* %122)
  %124 = load i64, i64* %13, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %82
  %127 = load i64, i64* %13, align 8
  br label %130

128:                                              ; preds = %82
  %129 = load i64, i64* %9, align 8
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i64 [ %127, %126 ], [ %129, %128 ]
  store i64 %131, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %132

132:                                              ; preds = %130, %58, %31
  %133 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %133)
  %134 = load i64, i64* %5, align 8
  ret i64 %134
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @spi_message_init(%struct.spi_message*) #2

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #2

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i64 @spi_sync(%struct.TYPE_4__*, %struct.spi_message*) #2

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
