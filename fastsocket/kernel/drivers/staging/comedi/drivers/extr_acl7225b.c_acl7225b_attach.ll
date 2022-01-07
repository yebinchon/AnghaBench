; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_acl7225b.c_acl7225b_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_acl7225b.c_acl7225b_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.comedi_device = type { i32, %struct.comedi_subdevice*, i64, i32, i32 }
%struct.comedi_subdevice = type { i32, i32, i8*, i32*, i8*, i8*, i8* }
%struct.comedi_devconfig = type { i32* }

@this_board = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"comedi%d: acl7225b: board=%s 0x%04x \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"acl7225b\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"I/O port conflict\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@COMEDI_SUBD_DO = common dso_local global i8* null, align 8
@SDF_WRITABLE = common dso_local global i8* null, align 8
@acl7225b_do_insn = common dso_local global i8* null, align 8
@range_digital = common dso_local global i32 0, align 4
@ACL7225_RIO_LO = common dso_local global i64 0, align 8
@COMEDI_SUBD_DI = common dso_local global i8* null, align 8
@SDF_READABLE = common dso_local global i8* null, align 8
@acl7225b_di_insn = common dso_local global i8* null, align 8
@ACL7225_DI_LO = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @acl7225b_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acl7225b_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %9 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %10 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_board, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_board, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @request_region(i32 %25, i32 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %2
  %30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %121

33:                                               ; preds = %2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_board, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %38 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %43 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %45 = call i64 @alloc_subdevices(%struct.comedi_device* %44, i32 3)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %33
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %121

50:                                               ; preds = %33
  %51 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %52 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %51, i32 0, i32 1
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %52, align 8
  %54 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i64 0
  store %struct.comedi_subdevice* %54, %struct.comedi_subdevice** %6, align 8
  %55 = load i8*, i8** @COMEDI_SUBD_DO, align 8
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %57 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %56, i32 0, i32 6
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** @SDF_WRITABLE, align 8
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %60 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %59, i32 0, i32 5
  store i8* %58, i8** %60, align 8
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %62 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %64 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %63, i32 0, i32 1
  store i32 16, i32* %64, align 4
  %65 = load i8*, i8** @acl7225b_do_insn, align 8
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %67 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %69 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %68, i32 0, i32 3
  store i32* @range_digital, i32** %69, align 8
  %70 = load i64, i64* @ACL7225_RIO_LO, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %73 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  %74 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 1
  %76 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %75, align 8
  %77 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %76, i64 1
  store %struct.comedi_subdevice* %77, %struct.comedi_subdevice** %6, align 8
  %78 = load i8*, i8** @COMEDI_SUBD_DI, align 8
  %79 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %80 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %79, i32 0, i32 6
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** @SDF_READABLE, align 8
  %82 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %83 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %82, i32 0, i32 5
  store i8* %81, i8** %83, align 8
  %84 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %85 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %87 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %86, i32 0, i32 1
  store i32 16, i32* %87, align 4
  %88 = load i8*, i8** @acl7225b_di_insn, align 8
  %89 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %90 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %89, i32 0, i32 4
  store i8* %88, i8** %90, align 8
  %91 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %92 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %91, i32 0, i32 3
  store i32* @range_digital, i32** %92, align 8
  %93 = load i64, i64* @ACL7225_RIO_LO, align 8
  %94 = inttoptr i64 %93 to i8*
  %95 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %96 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  %97 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %98 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %97, i32 0, i32 1
  %99 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %98, align 8
  %100 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %99, i64 2
  store %struct.comedi_subdevice* %100, %struct.comedi_subdevice** %6, align 8
  %101 = load i8*, i8** @COMEDI_SUBD_DI, align 8
  %102 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %103 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %102, i32 0, i32 6
  store i8* %101, i8** %103, align 8
  %104 = load i8*, i8** @SDF_READABLE, align 8
  %105 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %106 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %105, i32 0, i32 5
  store i8* %104, i8** %106, align 8
  %107 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %108 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  %109 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %110 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %109, i32 0, i32 1
  store i32 16, i32* %110, align 4
  %111 = load i8*, i8** @acl7225b_di_insn, align 8
  %112 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %113 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %112, i32 0, i32 4
  store i8* %111, i8** %113, align 8
  %114 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %115 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %114, i32 0, i32 3
  store i32* @range_digital, i32** %115, align 8
  %116 = load i64, i64* @ACL7225_DI_LO, align 8
  %117 = inttoptr i64 %116 to i8*
  %118 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %119 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %50, %47, %29
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @request_region(i32, i32, i8*) #1

declare dso_local i64 @alloc_subdevices(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
