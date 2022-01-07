; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aha152x.c_get_ports.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aha152x.c_get_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.Scsi_Host = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"\0A%s: %s(%s) \00", align 1
@CURRENT_SC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"on bus\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"waiting\00", align 1
@states = common dso_local global %struct.TYPE_2__* null, align 8
@STATE = common dso_local global i64 0, align 8
@PREVSTATE = common dso_local global i64 0, align 8
@SCSISEQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"SCSISEQ( \00", align 1
@TEMODEO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"TARGET MODE \00", align 1
@ENSELO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"SELO \00", align 1
@ENSELI = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"SELI \00", align 1
@ENRESELI = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"RESELI \00", align 1
@ENAUTOATNO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"AUTOATNO \00", align 1
@ENAUTOATNI = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"AUTOATNI \00", align 1
@ENAUTOATNP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"AUTOATNP \00", align 1
@SCSIRSTO = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"SCSIRSTO \00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c");\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c" SCSISIG(\00", align 1
@SCSISIG = common dso_local global i32 0, align 4
@P_MASK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"DATA OUT\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"DATA IN\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"COMMAND\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"STATUS\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"MESSAGE OUT\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"MESSAGE IN\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"*invalid*\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"); \00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"INTSTAT (%s); \00", align 1
@DMASTAT = common dso_local global i32 0, align 4
@INTSTAT = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"SSTAT( \00", align 1
@SSTAT0 = common dso_local global i32 0, align 4
@TARGET = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [8 x i8] c"TARGET \00", align 1
@SELDO = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [7 x i8] c"SELDO \00", align 1
@SELDI = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [7 x i8] c"SELDI \00", align 1
@SELINGO = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [9 x i8] c"SELINGO \00", align 1
@SWRAP = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [7 x i8] c"SWRAP \00", align 1
@SDONE = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [7 x i8] c"SDONE \00", align 1
@SPIORDY = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [9 x i8] c"SPIORDY \00", align 1
@DMADONE = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [9 x i8] c"DMADONE \00", align 1
@SSTAT1 = common dso_local global i32 0, align 4
@SELTO = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [7 x i8] c"SELTO \00", align 1
@ATNTARG = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [9 x i8] c"ATNTARG \00", align 1
@SCSIRSTI = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [10 x i8] c"SCSIRSTI \00", align 1
@PHASEMIS = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [10 x i8] c"PHASEMIS \00", align 1
@BUSFREE = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [9 x i8] c"BUSFREE \00", align 1
@SCSIPERR = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [10 x i8] c"SCSIPERR \00", align 1
@PHASECHG = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [10 x i8] c"PHASECHG \00", align 1
@REQINIT = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [9 x i8] c"REQINIT \00", align 1
@SIMODE0 = common dso_local global i32 0, align 4
@SIMODE1 = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [11 x i8] c"SXFRCTL0( \00", align 1
@SXFRCTL0 = common dso_local global i32 0, align 4
@SCSIEN = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [8 x i8] c"SCSIEN \00", align 1
@DMAEN = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [7 x i8] c"DMAEN \00", align 1
@CH1 = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [5 x i8] c"CH1 \00", align 1
@CLRSTCNT = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [10 x i8] c"CLRSTCNT \00", align 1
@SPIOEN = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [8 x i8] c"SPIOEN \00", align 1
@CLRCH1 = common dso_local global i32 0, align 4
@.str.48 = private unnamed_addr constant [8 x i8] c"CLRCH1 \00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"SIGNAL( \00", align 1
@SIG_ATNI = common dso_local global i32 0, align 4
@.str.50 = private unnamed_addr constant [6 x i8] c"ATNI \00", align 1
@SIG_SELI = common dso_local global i32 0, align 4
@SIG_BSYI = common dso_local global i32 0, align 4
@.str.51 = private unnamed_addr constant [6 x i8] c"BSYI \00", align 1
@SIG_REQI = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [6 x i8] c"REQI \00", align 1
@SIG_ACKI = common dso_local global i32 0, align 4
@.str.53 = private unnamed_addr constant [6 x i8] c"ACKI \00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"SELID(%02x), \00", align 1
@SELID = common dso_local global i32 0, align 4
@.str.55 = private unnamed_addr constant [12 x i8] c"STCNT(%d), \00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"SSTAT2( \00", align 1
@SSTAT2 = common dso_local global i32 0, align 4
@SOFFSET = common dso_local global i32 0, align 4
@.str.57 = private unnamed_addr constant [9 x i8] c"SOFFSET \00", align 1
@SEMPTY = common dso_local global i32 0, align 4
@.str.58 = private unnamed_addr constant [8 x i8] c"SEMPTY \00", align 1
@SFULL = common dso_local global i32 0, align 4
@.str.59 = private unnamed_addr constant [7 x i8] c"SFULL \00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"); SFCNT (%d); \00", align 1
@SFCNT = common dso_local global i32 0, align 4
@SSTAT3 = common dso_local global i32 0, align 4
@.str.61 = private unnamed_addr constant [27 x i8] c"SCSICNT (%d), OFFCNT(%d), \00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"SSTAT4( \00", align 1
@SSTAT4 = common dso_local global i32 0, align 4
@SYNCERR = common dso_local global i32 0, align 4
@.str.63 = private unnamed_addr constant [9 x i8] c"SYNCERR \00", align 1
@FWERR = common dso_local global i32 0, align 4
@.str.64 = private unnamed_addr constant [7 x i8] c"FWERR \00", align 1
@FRERR = common dso_local global i32 0, align 4
@.str.65 = private unnamed_addr constant [7 x i8] c"FRERR \00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"DMACNTRL0( \00", align 1
@DMACNTRL0 = common dso_local global i32 0, align 4
@.str.67 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@_8BIT = common dso_local global i32 0, align 4
@.str.68 = private unnamed_addr constant [5 x i8] c"8BIT\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"16BIT\00", align 1
@DMA = common dso_local global i32 0, align 4
@.str.70 = private unnamed_addr constant [4 x i8] c"DMA\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"PIO\00", align 1
@WRITE_READ = common dso_local global i32 0, align 4
@.str.72 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@ENDMA = common dso_local global i32 0, align 4
@.str.74 = private unnamed_addr constant [7 x i8] c"ENDMA \00", align 1
@INTEN = common dso_local global i32 0, align 4
@.str.75 = private unnamed_addr constant [7 x i8] c"INTEN \00", align 1
@RSTFIFO = common dso_local global i32 0, align 4
@.str.76 = private unnamed_addr constant [9 x i8] c"RSTFIFO \00", align 1
@SWINT = common dso_local global i32 0, align 4
@.str.77 = private unnamed_addr constant [7 x i8] c"SWINT \00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"DMASTAT( \00", align 1
@ATDONE = common dso_local global i32 0, align 4
@.str.79 = private unnamed_addr constant [8 x i8] c"ATDONE \00", align 1
@WORDRDY = common dso_local global i32 0, align 4
@.str.80 = private unnamed_addr constant [9 x i8] c"WORDRDY \00", align 1
@DFIFOFULL = common dso_local global i32 0, align 4
@.str.81 = private unnamed_addr constant [11 x i8] c"DFIFOFULL \00", align 1
@DFIFOEMP = common dso_local global i32 0, align 4
@.str.82 = private unnamed_addr constant [10 x i8] c"DFIFOEMP \00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.84 = private unnamed_addr constant [21 x i8] c"enabled interrupts( \00", align 1
@ENSELDO = common dso_local global i32 0, align 4
@.str.85 = private unnamed_addr constant [9 x i8] c"ENSELDO \00", align 1
@ENSELDI = common dso_local global i32 0, align 4
@.str.86 = private unnamed_addr constant [9 x i8] c"ENSELDI \00", align 1
@ENSELINGO = common dso_local global i32 0, align 4
@.str.87 = private unnamed_addr constant [11 x i8] c"ENSELINGO \00", align 1
@ENSWRAP = common dso_local global i32 0, align 4
@.str.88 = private unnamed_addr constant [9 x i8] c"ENSWRAP \00", align 1
@ENSDONE = common dso_local global i32 0, align 4
@.str.89 = private unnamed_addr constant [9 x i8] c"ENSDONE \00", align 1
@ENSPIORDY = common dso_local global i32 0, align 4
@.str.90 = private unnamed_addr constant [11 x i8] c"ENSPIORDY \00", align 1
@ENDMADONE = common dso_local global i32 0, align 4
@.str.91 = private unnamed_addr constant [11 x i8] c"ENDMADONE \00", align 1
@ENSELTIMO = common dso_local global i32 0, align 4
@.str.92 = private unnamed_addr constant [11 x i8] c"ENSELTIMO \00", align 1
@ENATNTARG = common dso_local global i32 0, align 4
@.str.93 = private unnamed_addr constant [11 x i8] c"ENATNTARG \00", align 1
@ENPHASEMIS = common dso_local global i32 0, align 4
@.str.94 = private unnamed_addr constant [12 x i8] c"ENPHASEMIS \00", align 1
@ENBUSFREE = common dso_local global i32 0, align 4
@.str.95 = private unnamed_addr constant [11 x i8] c"ENBUSFREE \00", align 1
@ENSCSIPERR = common dso_local global i32 0, align 4
@.str.96 = private unnamed_addr constant [12 x i8] c"ENSCSIPERR \00", align 1
@ENPHASECHG = common dso_local global i32 0, align 4
@.str.97 = private unnamed_addr constant [12 x i8] c"ENPHASECHG \00", align 1
@ENREQINIT = common dso_local global i32 0, align 4
@.str.98 = private unnamed_addr constant [11 x i8] c"ENREQINIT \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i8*)* @get_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ports(%struct.Scsi_Host* %0, i8* %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  store i8* %7, i8** %5, align 8
  %8 = load i64, i64* @CURRENT_SC, align 8
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @states, align 8
  %13 = load i64, i64* @STATE, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @states, align 8
  %18 = load i64, i64* @PREVSTATE, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %16, i32 %21)
  %23 = load i32, i32* @SCSISEQ, align 4
  %24 = call i32 @GETPORT(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @TEMODEO, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %2
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @ENSELO, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @ENSELI, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %39
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @ENRESELI, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @ENAUTOATNO, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %53
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @ENAUTOATNI, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %60
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @ENAUTOATNP, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %67
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @SCSIRSTO, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %74
  %82 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %83 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %84 = load i32, i32* @SCSISIG, align 4
  %85 = call i32 @GETPORT(i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @P_MASK, align 4
  %88 = and i32 %86, %87
  switch i32 %88, label %101 [
    i32 131, label %89
    i32 132, label %91
    i32 133, label %93
    i32 128, label %95
    i32 129, label %97
    i32 130, label %99
  ]

89:                                               ; preds = %81
  %90 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  br label %103

91:                                               ; preds = %81
  %92 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  br label %103

93:                                               ; preds = %81
  %94 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  br label %103

95:                                               ; preds = %81
  %96 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  br label %103

97:                                               ; preds = %81
  %98 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  br label %103

99:                                               ; preds = %81
  %100 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  br label %103

101:                                              ; preds = %81
  %102 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %99, %97, %95, %93, %91, %89
  %104 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %105 = load i32, i32* @DMASTAT, align 4
  %106 = load i32, i32* @INTSTAT, align 4
  %107 = call i64 @TESTHI(i32 %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0)
  %111 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i8* %110)
  %112 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0))
  %113 = load i32, i32* @SSTAT0, align 4
  %114 = call i32 @GETPORT(i32 %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @TARGET, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %103
  %120 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %103
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @SELDO, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %121
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @SELDI, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %128
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @SELINGO, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %135
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @SWRAP, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %142
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @SDONE, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %149
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* @SPIORDY, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0))
  br label %163

163:                                              ; preds = %161, %156
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* @DMADONE, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0))
  br label %170

170:                                              ; preds = %168, %163
  %171 = load i32, i32* @SSTAT1, align 4
  %172 = call i32 @GETPORT(i32 %171)
  store i32 %172, i32* %6, align 4
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @SELTO, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %170
  %178 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0))
  br label %179

179:                                              ; preds = %177, %170
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* @ATNTARG, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0))
  br label %186

186:                                              ; preds = %184, %179
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* @SCSIRSTI, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0))
  br label %193

193:                                              ; preds = %191, %186
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* @PHASEMIS, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %193
  %199 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0))
  br label %200

200:                                              ; preds = %198, %193
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* @BUSFREE, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %200
  %206 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0))
  br label %207

207:                                              ; preds = %205, %200
  %208 = load i32, i32* %6, align 4
  %209 = load i32, i32* @SCSIPERR, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %207
  %213 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0))
  br label %214

214:                                              ; preds = %212, %207
  %215 = load i32, i32* %6, align 4
  %216 = load i32, i32* @PHASECHG, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %214
  %220 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0))
  br label %221

221:                                              ; preds = %219, %214
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* @REQINIT, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %221
  %227 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0))
  br label %228

228:                                              ; preds = %226, %221
  %229 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %230 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0))
  %231 = load i32, i32* @SSTAT0, align 4
  %232 = call i32 @GETPORT(i32 %231)
  %233 = load i32, i32* @SIMODE0, align 4
  %234 = call i32 @GETPORT(i32 %233)
  %235 = and i32 %232, %234
  store i32 %235, i32* %6, align 4
  %236 = load i32, i32* %6, align 4
  %237 = load i32, i32* @TARGET, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %228
  %241 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0))
  br label %242

242:                                              ; preds = %240, %228
  %243 = load i32, i32* %6, align 4
  %244 = load i32, i32* @SELDO, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %242
  %248 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0))
  br label %249

249:                                              ; preds = %247, %242
  %250 = load i32, i32* %6, align 4
  %251 = load i32, i32* @SELDI, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %249
  %255 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0))
  br label %256

256:                                              ; preds = %254, %249
  %257 = load i32, i32* %6, align 4
  %258 = load i32, i32* @SELINGO, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %256
  %262 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0))
  br label %263

263:                                              ; preds = %261, %256
  %264 = load i32, i32* %6, align 4
  %265 = load i32, i32* @SWRAP, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %263
  %269 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0))
  br label %270

270:                                              ; preds = %268, %263
  %271 = load i32, i32* %6, align 4
  %272 = load i32, i32* @SDONE, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %270
  %276 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0))
  br label %277

277:                                              ; preds = %275, %270
  %278 = load i32, i32* %6, align 4
  %279 = load i32, i32* @SPIORDY, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %277
  %283 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0))
  br label %284

284:                                              ; preds = %282, %277
  %285 = load i32, i32* %6, align 4
  %286 = load i32, i32* @DMADONE, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %284
  %290 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0))
  br label %291

291:                                              ; preds = %289, %284
  %292 = load i32, i32* @SSTAT1, align 4
  %293 = call i32 @GETPORT(i32 %292)
  %294 = load i32, i32* @SIMODE1, align 4
  %295 = call i32 @GETPORT(i32 %294)
  %296 = and i32 %293, %295
  store i32 %296, i32* %6, align 4
  %297 = load i32, i32* %6, align 4
  %298 = load i32, i32* @SELTO, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %291
  %302 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0))
  br label %303

303:                                              ; preds = %301, %291
  %304 = load i32, i32* %6, align 4
  %305 = load i32, i32* @ATNTARG, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %303
  %309 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0))
  br label %310

310:                                              ; preds = %308, %303
  %311 = load i32, i32* %6, align 4
  %312 = load i32, i32* @SCSIRSTI, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %310
  %316 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0))
  br label %317

317:                                              ; preds = %315, %310
  %318 = load i32, i32* %6, align 4
  %319 = load i32, i32* @PHASEMIS, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %317
  %323 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0))
  br label %324

324:                                              ; preds = %322, %317
  %325 = load i32, i32* %6, align 4
  %326 = load i32, i32* @BUSFREE, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %324
  %330 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0))
  br label %331

331:                                              ; preds = %329, %324
  %332 = load i32, i32* %6, align 4
  %333 = load i32, i32* @SCSIPERR, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %338

336:                                              ; preds = %331
  %337 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0))
  br label %338

338:                                              ; preds = %336, %331
  %339 = load i32, i32* %6, align 4
  %340 = load i32, i32* @PHASECHG, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %345

343:                                              ; preds = %338
  %344 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0))
  br label %345

345:                                              ; preds = %343, %338
  %346 = load i32, i32* %6, align 4
  %347 = load i32, i32* @REQINIT, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %352

350:                                              ; preds = %345
  %351 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0))
  br label %352

352:                                              ; preds = %350, %345
  %353 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %354 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0))
  %355 = load i32, i32* @SXFRCTL0, align 4
  %356 = call i32 @GETPORT(i32 %355)
  store i32 %356, i32* %6, align 4
  %357 = load i32, i32* %6, align 4
  %358 = load i32, i32* @SCSIEN, align 4
  %359 = and i32 %357, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %363

361:                                              ; preds = %352
  %362 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i64 0, i64 0))
  br label %363

363:                                              ; preds = %361, %352
  %364 = load i32, i32* %6, align 4
  %365 = load i32, i32* @DMAEN, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %370

368:                                              ; preds = %363
  %369 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0))
  br label %370

370:                                              ; preds = %368, %363
  %371 = load i32, i32* %6, align 4
  %372 = load i32, i32* @CH1, align 4
  %373 = and i32 %371, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %377

375:                                              ; preds = %370
  %376 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0))
  br label %377

377:                                              ; preds = %375, %370
  %378 = load i32, i32* %6, align 4
  %379 = load i32, i32* @CLRSTCNT, align 4
  %380 = and i32 %378, %379
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %384

382:                                              ; preds = %377
  %383 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i64 0, i64 0))
  br label %384

384:                                              ; preds = %382, %377
  %385 = load i32, i32* %6, align 4
  %386 = load i32, i32* @SPIOEN, align 4
  %387 = and i32 %385, %386
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %391

389:                                              ; preds = %384
  %390 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0))
  br label %391

391:                                              ; preds = %389, %384
  %392 = load i32, i32* %6, align 4
  %393 = load i32, i32* @CLRCH1, align 4
  %394 = and i32 %392, %393
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %398

396:                                              ; preds = %391
  %397 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0))
  br label %398

398:                                              ; preds = %396, %391
  %399 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %400 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0))
  %401 = load i32, i32* @SCSISIG, align 4
  %402 = call i32 @GETPORT(i32 %401)
  store i32 %402, i32* %6, align 4
  %403 = load i32, i32* %6, align 4
  %404 = load i32, i32* @SIG_ATNI, align 4
  %405 = and i32 %403, %404
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %409

407:                                              ; preds = %398
  %408 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0))
  br label %409

409:                                              ; preds = %407, %398
  %410 = load i32, i32* %6, align 4
  %411 = load i32, i32* @SIG_SELI, align 4
  %412 = and i32 %410, %411
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %416

414:                                              ; preds = %409
  %415 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %416

416:                                              ; preds = %414, %409
  %417 = load i32, i32* %6, align 4
  %418 = load i32, i32* @SIG_BSYI, align 4
  %419 = and i32 %417, %418
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %423

421:                                              ; preds = %416
  %422 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i64 0, i64 0))
  br label %423

423:                                              ; preds = %421, %416
  %424 = load i32, i32* %6, align 4
  %425 = load i32, i32* @SIG_REQI, align 4
  %426 = and i32 %424, %425
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %430

428:                                              ; preds = %423
  %429 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0))
  br label %430

430:                                              ; preds = %428, %423
  %431 = load i32, i32* %6, align 4
  %432 = load i32, i32* @SIG_ACKI, align 4
  %433 = and i32 %431, %432
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %437

435:                                              ; preds = %430
  %436 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0))
  br label %437

437:                                              ; preds = %435, %430
  %438 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %439 = load i32, i32* @SELID, align 4
  %440 = call i32 @GETPORT(i32 %439)
  %441 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i64 0, i64 0), i32 %440)
  %442 = call i32 (...) @GETSTCNT()
  %443 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i64 0, i64 0), i32 %442)
  %444 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i64 0, i64 0))
  %445 = load i32, i32* @SSTAT2, align 4
  %446 = call i32 @GETPORT(i32 %445)
  store i32 %446, i32* %6, align 4
  %447 = load i32, i32* %6, align 4
  %448 = load i32, i32* @SOFFSET, align 4
  %449 = and i32 %447, %448
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %453

451:                                              ; preds = %437
  %452 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i64 0, i64 0))
  br label %453

453:                                              ; preds = %451, %437
  %454 = load i32, i32* %6, align 4
  %455 = load i32, i32* @SEMPTY, align 4
  %456 = and i32 %454, %455
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %460

458:                                              ; preds = %453
  %459 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0))
  br label %460

460:                                              ; preds = %458, %453
  %461 = load i32, i32* %6, align 4
  %462 = load i32, i32* @SFULL, align 4
  %463 = and i32 %461, %462
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %467

465:                                              ; preds = %460
  %466 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0))
  br label %467

467:                                              ; preds = %465, %460
  %468 = load i32, i32* %6, align 4
  %469 = load i32, i32* @SFULL, align 4
  %470 = load i32, i32* @SFCNT, align 4
  %471 = or i32 %469, %470
  %472 = and i32 %468, %471
  %473 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i64 0, i64 0), i32 %472)
  %474 = load i32, i32* @SSTAT3, align 4
  %475 = call i32 @GETPORT(i32 %474)
  store i32 %475, i32* %6, align 4
  %476 = load i32, i32* %6, align 4
  %477 = and i32 %476, 240
  %478 = ashr i32 %477, 4
  %479 = load i32, i32* %6, align 4
  %480 = and i32 %479, 15
  %481 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.61, i64 0, i64 0), i32 %478, i32 %480)
  %482 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i64 0, i64 0))
  %483 = load i32, i32* @SSTAT4, align 4
  %484 = call i32 @GETPORT(i32 %483)
  store i32 %484, i32* %6, align 4
  %485 = load i32, i32* %6, align 4
  %486 = load i32, i32* @SYNCERR, align 4
  %487 = and i32 %485, %486
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %491

489:                                              ; preds = %467
  %490 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i64 0, i64 0))
  br label %491

491:                                              ; preds = %489, %467
  %492 = load i32, i32* %6, align 4
  %493 = load i32, i32* @FWERR, align 4
  %494 = and i32 %492, %493
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %498

496:                                              ; preds = %491
  %497 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i64 0, i64 0))
  br label %498

498:                                              ; preds = %496, %491
  %499 = load i32, i32* %6, align 4
  %500 = load i32, i32* @FRERR, align 4
  %501 = and i32 %499, %500
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %505

503:                                              ; preds = %498
  %504 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0))
  br label %505

505:                                              ; preds = %503, %498
  %506 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %507 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i64 0, i64 0))
  %508 = load i32, i32* @DMACNTRL0, align 4
  %509 = call i32 @GETPORT(i32 %508)
  store i32 %509, i32* %6, align 4
  %510 = load i32, i32* %6, align 4
  %511 = load i32, i32* @_8BIT, align 4
  %512 = and i32 %510, %511
  %513 = icmp ne i32 %512, 0
  %514 = zext i1 %513 to i64
  %515 = select i1 %513, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i64 0, i64 0)
  %516 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i64 0, i64 0), i8* %515)
  %517 = load i32, i32* %6, align 4
  %518 = load i32, i32* @DMA, align 4
  %519 = and i32 %517, %518
  %520 = icmp ne i32 %519, 0
  %521 = zext i1 %520 to i64
  %522 = select i1 %520, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i64 0, i64 0)
  %523 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i64 0, i64 0), i8* %522)
  %524 = load i32, i32* %6, align 4
  %525 = load i32, i32* @WRITE_READ, align 4
  %526 = and i32 %524, %525
  %527 = icmp ne i32 %526, 0
  %528 = zext i1 %527 to i64
  %529 = select i1 %527, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0)
  %530 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i64 0, i64 0), i8* %529)
  %531 = load i32, i32* %6, align 4
  %532 = load i32, i32* @ENDMA, align 4
  %533 = and i32 %531, %532
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %537

535:                                              ; preds = %505
  %536 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i64 0, i64 0))
  br label %537

537:                                              ; preds = %535, %505
  %538 = load i32, i32* %6, align 4
  %539 = load i32, i32* @INTEN, align 4
  %540 = and i32 %538, %539
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %542, label %544

542:                                              ; preds = %537
  %543 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i64 0, i64 0))
  br label %544

544:                                              ; preds = %542, %537
  %545 = load i32, i32* %6, align 4
  %546 = load i32, i32* @RSTFIFO, align 4
  %547 = and i32 %545, %546
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %551

549:                                              ; preds = %544
  %550 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i64 0, i64 0))
  br label %551

551:                                              ; preds = %549, %544
  %552 = load i32, i32* %6, align 4
  %553 = load i32, i32* @SWINT, align 4
  %554 = and i32 %552, %553
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %558

556:                                              ; preds = %551
  %557 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i64 0, i64 0))
  br label %558

558:                                              ; preds = %556, %551
  %559 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %560 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i64 0, i64 0))
  %561 = load i32, i32* @DMASTAT, align 4
  %562 = call i32 @GETPORT(i32 %561)
  store i32 %562, i32* %6, align 4
  %563 = load i32, i32* %6, align 4
  %564 = load i32, i32* @ATDONE, align 4
  %565 = and i32 %563, %564
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %569

567:                                              ; preds = %558
  %568 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i64 0, i64 0))
  br label %569

569:                                              ; preds = %567, %558
  %570 = load i32, i32* %6, align 4
  %571 = load i32, i32* @WORDRDY, align 4
  %572 = and i32 %570, %571
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %574, label %576

574:                                              ; preds = %569
  %575 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i64 0, i64 0))
  br label %576

576:                                              ; preds = %574, %569
  %577 = load i32, i32* %6, align 4
  %578 = load i32, i32* @DFIFOFULL, align 4
  %579 = and i32 %577, %578
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %581, label %583

581:                                              ; preds = %576
  %582 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i64 0, i64 0))
  br label %583

583:                                              ; preds = %581, %576
  %584 = load i32, i32* %6, align 4
  %585 = load i32, i32* @DFIFOEMP, align 4
  %586 = and i32 %584, %585
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %588, label %590

588:                                              ; preds = %583
  %589 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i64 0, i64 0))
  br label %590

590:                                              ; preds = %588, %583
  %591 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0))
  %592 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.84, i64 0, i64 0))
  %593 = load i32, i32* @SIMODE0, align 4
  %594 = call i32 @GETPORT(i32 %593)
  store i32 %594, i32* %6, align 4
  %595 = load i32, i32* %6, align 4
  %596 = load i32, i32* @ENSELDO, align 4
  %597 = and i32 %595, %596
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %599, label %601

599:                                              ; preds = %590
  %600 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.85, i64 0, i64 0))
  br label %601

601:                                              ; preds = %599, %590
  %602 = load i32, i32* %6, align 4
  %603 = load i32, i32* @ENSELDI, align 4
  %604 = and i32 %602, %603
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %606, label %608

606:                                              ; preds = %601
  %607 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i64 0, i64 0))
  br label %608

608:                                              ; preds = %606, %601
  %609 = load i32, i32* %6, align 4
  %610 = load i32, i32* @ENSELINGO, align 4
  %611 = and i32 %609, %610
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %613, label %615

613:                                              ; preds = %608
  %614 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.87, i64 0, i64 0))
  br label %615

615:                                              ; preds = %613, %608
  %616 = load i32, i32* %6, align 4
  %617 = load i32, i32* @ENSWRAP, align 4
  %618 = and i32 %616, %617
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %620, label %622

620:                                              ; preds = %615
  %621 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i64 0, i64 0))
  br label %622

622:                                              ; preds = %620, %615
  %623 = load i32, i32* %6, align 4
  %624 = load i32, i32* @ENSDONE, align 4
  %625 = and i32 %623, %624
  %626 = icmp ne i32 %625, 0
  br i1 %626, label %627, label %629

627:                                              ; preds = %622
  %628 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.89, i64 0, i64 0))
  br label %629

629:                                              ; preds = %627, %622
  %630 = load i32, i32* %6, align 4
  %631 = load i32, i32* @ENSPIORDY, align 4
  %632 = and i32 %630, %631
  %633 = icmp ne i32 %632, 0
  br i1 %633, label %634, label %636

634:                                              ; preds = %629
  %635 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.90, i64 0, i64 0))
  br label %636

636:                                              ; preds = %634, %629
  %637 = load i32, i32* %6, align 4
  %638 = load i32, i32* @ENDMADONE, align 4
  %639 = and i32 %637, %638
  %640 = icmp ne i32 %639, 0
  br i1 %640, label %641, label %643

641:                                              ; preds = %636
  %642 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.91, i64 0, i64 0))
  br label %643

643:                                              ; preds = %641, %636
  %644 = load i32, i32* @SIMODE1, align 4
  %645 = call i32 @GETPORT(i32 %644)
  store i32 %645, i32* %6, align 4
  %646 = load i32, i32* %6, align 4
  %647 = load i32, i32* @ENSELTIMO, align 4
  %648 = and i32 %646, %647
  %649 = icmp ne i32 %648, 0
  br i1 %649, label %650, label %652

650:                                              ; preds = %643
  %651 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.92, i64 0, i64 0))
  br label %652

652:                                              ; preds = %650, %643
  %653 = load i32, i32* %6, align 4
  %654 = load i32, i32* @ENATNTARG, align 4
  %655 = and i32 %653, %654
  %656 = icmp ne i32 %655, 0
  br i1 %656, label %657, label %659

657:                                              ; preds = %652
  %658 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i64 0, i64 0))
  br label %659

659:                                              ; preds = %657, %652
  %660 = load i32, i32* %6, align 4
  %661 = load i32, i32* @ENPHASEMIS, align 4
  %662 = and i32 %660, %661
  %663 = icmp ne i32 %662, 0
  br i1 %663, label %664, label %666

664:                                              ; preds = %659
  %665 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i64 0, i64 0))
  br label %666

666:                                              ; preds = %664, %659
  %667 = load i32, i32* %6, align 4
  %668 = load i32, i32* @ENBUSFREE, align 4
  %669 = and i32 %667, %668
  %670 = icmp ne i32 %669, 0
  br i1 %670, label %671, label %673

671:                                              ; preds = %666
  %672 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i64 0, i64 0))
  br label %673

673:                                              ; preds = %671, %666
  %674 = load i32, i32* %6, align 4
  %675 = load i32, i32* @ENSCSIPERR, align 4
  %676 = and i32 %674, %675
  %677 = icmp ne i32 %676, 0
  br i1 %677, label %678, label %680

678:                                              ; preds = %673
  %679 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i64 0, i64 0))
  br label %680

680:                                              ; preds = %678, %673
  %681 = load i32, i32* %6, align 4
  %682 = load i32, i32* @ENPHASECHG, align 4
  %683 = and i32 %681, %682
  %684 = icmp ne i32 %683, 0
  br i1 %684, label %685, label %687

685:                                              ; preds = %680
  %686 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i64 0, i64 0))
  br label %687

687:                                              ; preds = %685, %680
  %688 = load i32, i32* %6, align 4
  %689 = load i32, i32* @ENREQINIT, align 4
  %690 = and i32 %688, %689
  %691 = icmp ne i32 %690, 0
  br i1 %691, label %692, label %694

692:                                              ; preds = %687
  %693 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.98, i64 0, i64 0))
  br label %694

694:                                              ; preds = %692, %687
  %695 = call i32 (i8*, ...) @SPRINTF(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0))
  %696 = load i8*, i8** %4, align 8
  %697 = load i8*, i8** %5, align 8
  %698 = ptrtoint i8* %696 to i64
  %699 = ptrtoint i8* %697 to i64
  %700 = sub i64 %698, %699
  %701 = trunc i64 %700 to i32
  ret i32 %701
}

declare dso_local i32 @SPRINTF(i8*, ...) #1

declare dso_local i32 @GETPORT(i32) #1

declare dso_local i64 @TESTHI(i32, i32) #1

declare dso_local i32 @GETSTCNT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
